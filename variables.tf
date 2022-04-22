variable "bfd" {
  description = "Enable or disable command `feature bfd`."
  type        = bool
  default     = false
}

variable "bgp" {
  description = "Enable or disable command `feature bgp`."
  type        = bool
  default     = false
}

variable "dhcp" {
  description = "Enable or disable command `feature dhcp`."
  type        = bool
  default     = false
}

variable "evpn" {
  description = "Enable or disable command `nv overlay evpn`."
  type        = bool
  default     = false
}

variable "fabric_forwarding" {
  description = "Enable or disable command `feature fabric forwarding`."
  type        = bool
  default     = false
}

variable "hsrp" {
  description = "Enable or disable command `feature hsrp`."
  type        = bool
  default     = false
}

variable "interface_vlan" {
  description = "Enable or disable command `feature interface-vlan`."
  type        = bool
  default     = false
}

variable "isis" {
  description = "Enable or disable command `feature isis`."
  type        = bool
  default     = false
}

variable "lacp" {
  description = "Enable or disable command `feature lacp`."
  type        = bool
  default     = false
}

variable "lldp" {
  description = "Enable or disable command `feature lldp`."
  type        = bool
  default     = false
}

variable "macsec" {
  description = "Enable or disable command `feature macsec`."
  type        = bool
  default     = false
}

variable "netflow" {
  description = "Enable or disable command `feature netflow`."
  type        = bool
  default     = false
}

variable "nv_overlay" {
  description = "Enable or disable command `feature nv overlay`."
  type        = bool
  default     = false
}

variable "ospf" {
  description = "Enable or disable command `feature ospf`."
  type        = bool
  default     = false
}

variable "ospfv3" {
  description = "Enable or disable command `feature ospfv3`."
  type        = bool
  default     = false
}

variable "pim" {
  description = "Enable or disable command `feature pim`."
  type        = bool
  default     = false
}

variable "ptp" {
  description = "Enable or disable command `feature ptp`."
  type        = bool
  default     = false
}

variable "pvlan" {
  description = "Enable or disable command `feature pvlan`."
  type        = bool
  default     = false
}

variable "ssh" {
  description = "Enable or disable command `feature ssh`."
  type        = bool
  default     = false
}

variable "tacacs" {
  description = "Enable or disable command `feature tacacs`."
  type        = bool
  default     = false
}

variable "telnet" {
  description = "Enable or disable command `feature telnet`."
  type        = bool
  default     = false
}

variable "udld" {
  description = "Enable or disable command `feature udld`."
  type        = bool
  default     = false
}

variable "vn_segment" {
  description = "Enable or disable command `feature vn segment`."
  type        = bool
  default     = false
}

variable "vpc" {
  description = "Enable or disable command `feature vpc`."
  type        = bool
  default     = false
}
variable "nxosv_device" {
  description = "Set true for NX-OSv devices. NX-OSv does not support features `macsec` and `netflow`, so module will not try to push config for these features."
  type        = bool
  default     = true
}
