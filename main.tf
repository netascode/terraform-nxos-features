resource "nxos_feature_bfd" "fmBfd" {
  admin_state = var.bfd ? "enabled" : "disabled"
}

resource "nxos_feature_bgp" "fmBgp" {
  admin_state = var.bgp ? "enabled" : "disabled"
}

resource "nxos_feature_dhcp" "fmDhcp" {
  admin_state = var.dhcp ? "enabled" : "disabled"
}

resource "nxos_feature_evpn" "fmEvpn" {
  admin_state = var.evpn ? "enabled" : "disabled"
}

resource "nxos_feature_hmm" "fmHmm" {
  admin_state = var.fabric_forwarding ? "enabled" : "disabled"
}

resource "nxos_feature_hsrp" "fmHsrp" {
  admin_state = var.hsrp ? "enabled" : "disabled"
}

resource "nxos_feature_interface_vlan" "fmInterfaceVlan" {
  admin_state = var.interface_vlan ? "enabled" : "disabled"
}

resource "nxos_feature_isis" "fmIsis" {
  admin_state = var.isis ? "enabled" : "disabled"
}

resource "nxos_feature_lacp" "fmLacp" {
  admin_state = var.lacp ? "enabled" : "disabled"
}

resource "nxos_feature_lldp" "fmLldp" {
  admin_state = var.lldp ? "enabled" : "disabled"
}

resource "nxos_feature_macsec" "fmMacsec" {
  count       = var.nxosv_device ? 0 : 1
  admin_state = var.macsec ? "enabled" : "disabled"
}

resource "nxos_feature_netflow" "fmNetflow" {
  count       = var.nxosv_device ? 0 : 1
  admin_state = var.netflow ? "enabled" : "disabled"
}

resource "nxos_feature_nv_overlay" "fmNvo" {
  admin_state = var.nv_overlay ? "enabled" : "disabled"
}

resource "nxos_feature_ospf" "fmOspf" {
  admin_state = var.ospf ? "enabled" : "disabled"
}

resource "nxos_feature_ospfv3" "fmOspfv3" {
  admin_state = var.ospfv3 ? "enabled" : "disabled"
}

resource "nxos_feature_pim" "fmPim" {
  admin_state = var.pim ? "enabled" : "disabled"
}

resource "nxos_feature_ptp" "fmPtp" {
  admin_state = var.ptp ? "enabled" : "disabled"
}

resource "nxos_feature_pvlan" "fmPvlan" {
  admin_state = var.pvlan ? "enabled" : "disabled"
}

resource "nxos_feature_ssh" "fmSsh" {
  admin_state = var.ssh ? "enabled" : "disabled"
}

resource "nxos_feature_tacacs" "fmTacacsplus" {
  admin_state = var.tacacs ? "enabled" : "disabled"
}

resource "nxos_feature_telnet" "fmTelnet" {
  admin_state = var.telnet ? "enabled" : "disabled"
}

resource "nxos_feature_udld" "fmUdld" {
  admin_state = var.udld ? "enabled" : "disabled"
}

resource "nxos_feature_vn_segment" "fmVnSegment" {
  admin_state = var.vn_segment ? "enabled" : "disabled"
  depends_on = [
    nxos_feature_nv_overlay.fmNvo
  ]
}

resource "nxos_feature_vpc" "fmVpc" {
  admin_state = var.vpc ? "enabled" : "disabled"
}

resource "nxos_ospf" "ospfEntity" {
  admin_state = "enabled"
  depends_on = [
    nxos_feature_ospf.fmOspf
  ]
}
