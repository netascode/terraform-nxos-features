resource "nxos_feature_bfd" "fmBfd" {
  count       = var.bfd != null ? 1 : 0
  admin_state = var.bfd ? "enabled" : "disabled"
}

resource "nxos_feature_bgp" "fmBgp" {
  count       = var.bgp != null ? 1 : 0
  admin_state = var.bgp ? "enabled" : "disabled"
}

resource "nxos_feature_dhcp" "fmDhcp" {
  count       = var.dhcp != null ? 1 : 0
  admin_state = var.dhcp ? "enabled" : "disabled"
}

resource "nxos_feature_evpn" "fmEvpn" {
  count       = var.evpn != null ? 1 : 0
  admin_state = var.evpn ? "enabled" : "disabled"
}

resource "nxos_feature_hmm" "fmHmm" {
  count       = var.fabric_forwarding != null ? 1 : 0
  admin_state = var.fabric_forwarding ? "enabled" : "disabled"
}

resource "nxos_feature_hsrp" "fmHsrp" {
  count       = var.hsrp != null ? 1 : 0
  admin_state = var.hsrp ? "enabled" : "disabled"
}

resource "nxos_feature_interface_vlan" "fmInterfaceVlan" {
  count       = var.interface_vlan != null ? 1 : 0
  admin_state = var.interface_vlan ? "enabled" : "disabled"
}

resource "nxos_feature_isis" "fmIsis" {
  count       = var.isis != null ? 1 : 0
  admin_state = var.isis ? "enabled" : "disabled"
}

resource "nxos_feature_lacp" "fmLacp" {
  count       = var.lacp != null ? 1 : 0
  admin_state = var.lacp ? "enabled" : "disabled"
}

resource "nxos_feature_lldp" "fmLldp" {
  count       = var.lldp != null ? 1 : 0
  admin_state = var.lldp ? "enabled" : "disabled"
}

resource "nxos_feature_macsec" "fmMacsec" {
  count       = var.macsec != null ? 1 : 0
  admin_state = var.macsec ? "enabled" : "disabled"
}

resource "nxos_feature_netflow" "fmNetflow" {
  count       = var.netflow != null ? 1 : 0
  admin_state = var.netflow ? "enabled" : "disabled"
}

resource "nxos_feature_nv_overlay" "fmNvo" {
  count       = var.nv_overlay != null ? 1 : 0
  admin_state = var.nv_overlay ? "enabled" : "disabled"
}

resource "nxos_feature_ospf" "fmOspf" {
  count       = var.ospf != null ? 1 : 0
  admin_state = var.ospf ? "enabled" : "disabled"
}

resource "nxos_feature_ospfv3" "fmOspfv3" {
  count       = var.ospfv3 != null ? 1 : 0
  admin_state = var.ospfv3 ? "enabled" : "disabled"
}

resource "nxos_feature_pim" "fmPim" {
  count       = var.pim != null ? 1 : 0
  admin_state = var.pim ? "enabled" : "disabled"
}

resource "nxos_feature_ptp" "fmPtp" {
  count       = var.ptp != null ? 1 : 0
  admin_state = var.ptp ? "enabled" : "disabled"
}

resource "nxos_feature_pvlan" "fmPvlan" {
  count       = var.pvlan != null ? 1 : 0
  admin_state = var.pvlan ? "enabled" : "disabled"
}

resource "nxos_feature_ssh" "fmSsh" {
  count       = var.ssh != null ? 1 : 0
  admin_state = var.ssh ? "enabled" : "disabled"
}

resource "nxos_feature_tacacs" "fmTacacsplus" {
  count       = var.tacacs != null ? 1 : 0
  admin_state = var.tacacs ? "enabled" : "disabled"
}

resource "nxos_feature_telnet" "fmTelnet" {
  count       = var.telnet != null ? 1 : 0
  admin_state = var.telnet ? "enabled" : "disabled"
}

resource "nxos_feature_udld" "fmUdld" {
  count       = var.udld != null ? 1 : 0
  admin_state = var.udld ? "enabled" : "disabled"
}

resource "nxos_feature_vn_segment" "fmVnSegment" {
  count       = var.vn_segment != null ? 1 : 0
  admin_state = var.vn_segment ? "enabled" : "disabled"
  depends_on = [
    nxos_feature_nv_overlay.fmNvo
  ]
}

resource "nxos_feature_vpc" "fmVpc" {
  count       = var.vpc != null ? 1 : 0
  admin_state = var.vpc ? "enabled" : "disabled"
}

resource "nxos_ospf" "ospfEntity" {
  count       = var.ospf == true ? 1 : 0
  admin_state = "enabled"
  depends_on = [
    nxos_feature_ospf.fmOspf
  ]
}
