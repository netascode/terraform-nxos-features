<!-- BEGIN_TF_DOCS -->
# NX-OS Features Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "nxos_features" {
  source  = "netascode/features/nxos"
  version = ">= 0.0.1"

  bfd               = true
  bgp               = true
  dhcp              = true
  evpn              = true
  fabric_forwarding = true
  hsrp              = true
  interface_vlan    = true
  isis              = true
  lacp              = true
  lldp              = true
  macsec            = true
  netflow           = true
  nv_overlay        = true
  ospf              = true
  ospfv3            = true
  pim               = true
  ptp               = true
  pvlan             = true
  ssh               = true
  tacacs            = true
  telnet            = true
  udld              = true
  vn_segment        = true
  vpc               = true
  nxosv_device      = true
}
```
<!-- END_TF_DOCS -->