terraform {
  required_version = ">= 1.0.0"

  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    nxos = {
      source  = "CiscoDevNet/nxos"
      version = ">= 0.5.0"
    }
  }
}

module "main" {
  source = "../.."

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
}

data "nxos_rest" "nxos_feature_bfd" {
  dn = "sys/fm/bfd"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_bgp" {
  dn = "sys/fm/bgp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_dhcp" {
  dn = "sys/fm/dhcp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_evpn" {
  dn = "sys/fm/evpn"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_hmm" {
  dn = "sys/fm/hmm"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_hsrp" {
  dn = "sys/fm/hsrp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_interface_vlan" {
  dn = "sys/fm/ifvlan"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_isis" {
  dn = "sys/fm/isis"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_lacp" {
  dn = "sys/fm/lacp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_lldp" {
  dn = "sys/fm/lldp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_nv_overlay" {
  dn = "sys/fm/nvo"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_ospf" {
  dn = "sys/fm/ospf"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_ospfv3" {
  dn = "sys/fm/ospfv3"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_pim" {
  dn = "sys/fm/pim"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_ptp" {
  dn = "sys/fm/ptp"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_pvlan" {
  dn = "sys/fm/pvlan"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_ssh" {
  dn = "sys/fm/ssh"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_tacacs" {
  dn = "sys/fm/tacacsplus"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_telnet" {
  dn = "sys/fm/telnet"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_udld" {
  dn = "sys/fm/udld"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_vn_segment" {
  dn = "sys/fm/vnsegment"

  depends_on = [module.main]
}

data "nxos_rest" "nxos_feature_vpc" {
  dn = "sys/fm/vpc"

  depends_on = [module.main]
}


resource "test_assertions" "nxos_features" {
  component = "nxos_features"

  equal "bfd" {
    description = "bfd"
    got         = data.nxos_rest.nxos_feature_bfd.content.adminSt
    want        = "enabled"
  }

  equal "bgp" {
    description = "bgp"
    got         = data.nxos_rest.nxos_feature_bgp.content.adminSt
    want        = "enabled"
  }

  equal "dhcp" {
    description = "dhcp"
    got         = data.nxos_rest.nxos_feature_dhcp.content.adminSt
    want        = "enabled"
  }

  equal "evpn" {
    description = "evpn"
    got         = data.nxos_rest.nxos_feature_evpn.content.adminSt
    want        = "enabled"
  }

  equal "hmm" {
    description = "hmm"
    got         = data.nxos_rest.nxos_feature_hmm.content.adminSt
    want        = "enabled"
  }

  equal "hsrp" {
    description = "hsrp"
    got         = data.nxos_rest.nxos_feature_hsrp.content.adminSt
    want        = "enabled"
  }

  equal "interface_vlan" {
    description = "interface_vlan"
    got         = data.nxos_rest.nxos_feature_interface_vlan.content.adminSt
    want        = "enabled"
  }

  equal "isis" {
    description = "isis"
    got         = data.nxos_rest.nxos_feature_isis.content.adminSt
    want        = "enabled"
  }

  equal "lacp" {
    description = "lacp"
    got         = data.nxos_rest.nxos_feature_lacp.content.adminSt
    want        = "enabled"
  }

  equal "lldp" {
    description = "lldp"
    got         = data.nxos_rest.nxos_feature_lldp.content.adminSt
    want        = "enabled"
  }

  equal "nv_overlay" {
    description = "nv_overlay"
    got         = data.nxos_rest.nxos_feature_nv_overlay.content.adminSt
    want        = "enabled"
  }

  equal "ospf" {
    description = "ospf"
    got         = data.nxos_rest.nxos_feature_ospf.content.adminSt
    want        = "enabled"
  }

  equal "ospfv3" {
    description = "ospfv3"
    got         = data.nxos_rest.nxos_feature_ospfv3.content.adminSt
    want        = "enabled"
  }

  equal "pim" {
    description = "pim"
    got         = data.nxos_rest.nxos_feature_pim.content.adminSt
    want        = "enabled"
  }

  equal "ptp" {
    description = "ptp"
    got         = data.nxos_rest.nxos_feature_ptp.content.adminSt
    want        = "enabled"
  }

  equal "pvlan" {
    description = "pvlan"
    got         = data.nxos_rest.nxos_feature_pvlan.content.adminSt
    want        = "enabled"
  }

  equal "ssh" {
    description = "ssh"
    got         = data.nxos_rest.nxos_feature_ssh.content.adminSt
    want        = "enabled"
  }

  equal "tacacs" {
    description = "tacacs"
    got         = data.nxos_rest.nxos_feature_tacacs.content.adminSt
    want        = "enabled"
  }

  equal "telnet" {
    description = "telnet"
    got         = data.nxos_rest.nxos_feature_telnet.content.adminSt
    want        = "enabled"
  }

  equal "udld" {
    description = "udld"
    got         = data.nxos_rest.nxos_feature_udld.content.adminSt
    want        = "enabled"
  }

  equal "vn_segment" {
    description = "vn_segment"
    got         = data.nxos_rest.nxos_feature_vn_segment.content.adminSt
    want        = "enabled"
  }

  equal "vpc" {
    description = "vpc"
    got         = data.nxos_rest.nxos_feature_vpc.content.adminSt
    want        = "enabled"
  }
}
