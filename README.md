<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-nxos-features/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-nxos-features/actions/workflows/test.yml)

# Terraform NX-OS Features Module

Manages NX-OS Features

## Examples

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

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_nxos"></a> [nxos](#requirement\_nxos) | >= 0.3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nxos"></a> [nxos](#provider\_nxos) | >= 0.3.5 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bfd"></a> [bfd](#input\_bfd) | Enable or disable command `feature bfd`. | `bool` | `false` | no |
| <a name="input_bgp"></a> [bgp](#input\_bgp) | Enable or disable command `feature bgp`. | `bool` | `false` | no |
| <a name="input_dhcp"></a> [dhcp](#input\_dhcp) | Enable or disable command `feature dhcp`. | `bool` | `false` | no |
| <a name="input_evpn"></a> [evpn](#input\_evpn) | Enable or disable command `nv overlay evpn`. | `bool` | `false` | no |
| <a name="input_fabric_forwarding"></a> [fabric\_forwarding](#input\_fabric\_forwarding) | Enable or disable command `feature fabric forwarding`. | `bool` | `false` | no |
| <a name="input_hsrp"></a> [hsrp](#input\_hsrp) | Enable or disable command `feature hsrp`. | `bool` | `false` | no |
| <a name="input_interface_vlan"></a> [interface\_vlan](#input\_interface\_vlan) | Enable or disable command `feature interface-vlan`. | `bool` | `false` | no |
| <a name="input_isis"></a> [isis](#input\_isis) | Enable or disable command `feature isis`. | `bool` | `false` | no |
| <a name="input_lacp"></a> [lacp](#input\_lacp) | Enable or disable command `feature lacp`. | `bool` | `false` | no |
| <a name="input_lldp"></a> [lldp](#input\_lldp) | Enable or disable command `feature lldp`. | `bool` | `false` | no |
| <a name="input_macsec"></a> [macsec](#input\_macsec) | Enable or disable command `feature macsec`. | `bool` | `false` | no |
| <a name="input_netflow"></a> [netflow](#input\_netflow) | Enable or disable command `feature netflow`. | `bool` | `false` | no |
| <a name="input_nv_overlay"></a> [nv\_overlay](#input\_nv\_overlay) | Enable or disable command `feature nv overlay`. | `bool` | `false` | no |
| <a name="input_ospf"></a> [ospf](#input\_ospf) | Enable or disable command `feature ospf`. | `bool` | `false` | no |
| <a name="input_ospfv3"></a> [ospfv3](#input\_ospfv3) | Enable or disable command `feature ospfv3`. | `bool` | `false` | no |
| <a name="input_pim"></a> [pim](#input\_pim) | Enable or disable command `feature pim`. | `bool` | `false` | no |
| <a name="input_ptp"></a> [ptp](#input\_ptp) | Enable or disable command `feature ptp`. | `bool` | `false` | no |
| <a name="input_pvlan"></a> [pvlan](#input\_pvlan) | Enable or disable command `feature pvlan`. | `bool` | `false` | no |
| <a name="input_ssh"></a> [ssh](#input\_ssh) | Enable or disable command `feature ssh`. | `bool` | `false` | no |
| <a name="input_tacacs"></a> [tacacs](#input\_tacacs) | Enable or disable command `feature tacacs`. | `bool` | `false` | no |
| <a name="input_telnet"></a> [telnet](#input\_telnet) | Enable or disable command `feature telnet`. | `bool` | `false` | no |
| <a name="input_udld"></a> [udld](#input\_udld) | Enable or disable command `feature udld`. | `bool` | `false` | no |
| <a name="input_vn_segment"></a> [vn\_segment](#input\_vn\_segment) | Enable or disable command `feature vn segment`. | `bool` | `false` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | Enable or disable command `feature vpc`. | `bool` | `false` | no |
| <a name="input_nxosv_device"></a> [nxosv\_device](#input\_nxosv\_device) | Set true for NX-OSv devices. NX-OSv does not support features `macsec` and `netflow`, so module will not try to push config for these features. | `bool` | `false` | no |

## Outputs

No outputs.

## Resources

| Name | Type |
|------|------|
| [nxos_feature_bfd.fmBfd](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_bfd) | resource |
| [nxos_feature_bgp.fmBgp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_bgp) | resource |
| [nxos_feature_dhcp.fmDhcp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_dhcp) | resource |
| [nxos_feature_evpn.fmEvpn](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_evpn) | resource |
| [nxos_feature_hmm.fmHmm](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_hmm) | resource |
| [nxos_feature_hsrp.fmHsrp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_hsrp) | resource |
| [nxos_feature_interface_vlan.fmInterfaceVlan](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_interface_vlan) | resource |
| [nxos_feature_isis.fmIsis](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_isis) | resource |
| [nxos_feature_lacp.fmLacp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_lacp) | resource |
| [nxos_feature_lldp.fmLldp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_lldp) | resource |
| [nxos_feature_macsec.fmMacsec](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_macsec) | resource |
| [nxos_feature_netflow.fmNetflow](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_netflow) | resource |
| [nxos_feature_nv_overlay.fmNvo](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_nv_overlay) | resource |
| [nxos_feature_ospf.fmOspf](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_ospf) | resource |
| [nxos_feature_ospfv3.fmOspfv3](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_ospfv3) | resource |
| [nxos_feature_pim.fmPim](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_pim) | resource |
| [nxos_feature_ptp.fmPtp](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_ptp) | resource |
| [nxos_feature_pvlan.fmPvlan](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_pvlan) | resource |
| [nxos_feature_ssh.fmSsh](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_ssh) | resource |
| [nxos_feature_tacacs.fmTacacsplus](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_tacacs) | resource |
| [nxos_feature_telnet.fmTelnet](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_telnet) | resource |
| [nxos_feature_udld.fmUdld](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_udld) | resource |
| [nxos_feature_vn_segment.fmVnSegment](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_vn_segment) | resource |
| [nxos_feature_vpc.fmVpc](https://registry.terraform.io/providers/netascode/nxos/latest/docs/resources/feature_vpc) | resource |
<!-- END_TF_DOCS -->