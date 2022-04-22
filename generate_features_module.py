# Quick and dirty script to generate variables.tf, main.tf and test_full.tf
import pathlib
import yaml

RENAME_DICT = {
    "hmm": {"variable": "fabric_forwarding", "descr": "feature fabric forwarding"},
    "evpn": {"descr": "nv overlay evpn"},
    "interface_vlan": {"descr": "feature interface-vlan"},
    "vn_segment": {"descr": "feature vn-segment-vlan-based"},
    "vn_segment": {"depends_on": "nv_overlay"},
}

# feature is not supported on the nxosv platform
NOT_SUPPORTED_IN_NXOSV = ["netflow", "macsec"]


def get_data(directory):
    data = {}
    max_len = 0
    for item in sorted(directory.iterdir()):
        filename = item.stem
        if "feature" in filename:
            feature_name = filename.replace("feature_", "")
            with open(item, "r") as f:
                yaml_data = yaml.safe_load(f)
            descr = " ".join(feature_name.split("_"))
            data[feature_name] = {
                "class_name": yaml_data["class_name"],
                "dn": yaml_data["dn"],
                "variable": feature_name,
                "descr": f"feature {descr}",
            }
            if feature_name in RENAME_DICT:
                data[feature_name].update(RENAME_DICT[feature_name])
            if len(data[feature_name]["variable"]) > max_len:
                max_len = len(data[feature_name]["variable"])
    return data, max_len


def generate_main(data):
    result = []
    for key, value in data.items():
        depends_on = ""
        count = ""
        if "depends_on" in value:
            depends_on = f"""  depends_on = [
    nxos_feature_{value['depends_on']}.{data[value['depends_on']]['class_name']}
  ]
"""
        if key in NOT_SUPPORTED_IN_NXOSV:
            count = "count       = var.nxosv_device ? 0 : 1\n  "
        res = f"""resource "nxos_feature_{key}" "{value['class_name']}" {{
  {count}admin_state = var.{value['variable']} ? "enabled" : "disabled"
{depends_on}}}
"""
        result.append(res)
    write_data = "\n".join(result)
    with open("main.tf", "w") as f:
        f.write(write_data)


def generate_variables(data):
    result = []
    for value in data.values():
        res = f"""variable "{value['variable']}" {{
  description = "Enable or disable command `{value['descr']}`."
  type        = bool
  default     = false
}}
"""
        result.append(res)
    write_data = "\n".join(result)
    write_data += """variable "nxosv_device" {
  description = "Set true for NX-OSv devices. NX-OSv does not support features `macsec` and `netflow`, so module will not try to push config for these features."
  type        = bool
  default     = false
}
"""
    with open("variables.tf", "w") as f:
        f.write(write_data)


def generate_test(data, version, max_len):
    module_data = []
    tf_data = []
    tf_resource = []
    for key, value in data.items():
        module_data.append(f"  {value['variable']: <{max_len}} = true ")
        if key not in NOT_SUPPORTED_IN_NXOSV:
            tf_data.append(
                f"""data "nxos_rest" "nxos_feature_{key}" {{
  dn = "{value['dn']}"

  depends_on = [module.main]
}}
"""
            )

            tf_resource.append(
                f"""  equal "{key}" {{
    description = "{key}"
    got         = data.nxos_rest.nxos_feature_{key}.content.adminSt
    want        = "enabled"
  }}
"""
            )

    module_data.append(f"  {'nxosv_device': <{max_len}} = true ")
    module_data = "\n".join(module_data)
    tf_data = "\n".join(tf_data)
    tf_resource = "\n".join(tf_resource)

    write_data = f"""
terraform {{
  required_providers {{
    test = {{
      source = "terraform.io/builtin/test"
    }}

    nxos = {{
      source  = "netascode/nxos"
      version = ">={version}"
    }}
  }}
}}

module "main" {{
  source = "../.."

{module_data}
}}

{tf_data}

resource "test_assertions" "nxos_features" {{
  component = "nxos_features"

{tf_resource}}}
"""

    with open("tests/full/test_full.tf", "w") as f:
        f.write(write_data)


if __name__ == "__main__":
    version = "0.3.5"
    directory = pathlib.Path(
        "/Users/ivan/job/tf/terraform-provider-nxos/gen/definitions/"
    )
    data, max_len = get_data(directory)
    generate_variables(data)
    generate_main(data)
    generate_test(data, version, max_len)
