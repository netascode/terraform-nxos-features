variable "device" {
  description = "A device name from the provider configuration."
  type        = string
  default     = null
}

variable "bfd" {
  description = "Enable or disable command `feature bfd`."
  type        = bool
  default     = null
}

variable "bgp" {
  description = "Enable or disable command `feature bgp`."
  type        = bool
  default     = null
}

variable "dhcp" {
  description = "Enable or disable command `feature dhcp`."
  type        = bool
  default     = null
}

variable "evpn" {
  description = "Enable or disable command `nv overlay evpn`."
  type        = bool
  default     = null
}

variable "fabric_forwarding" {
  description = "Enable or disable command `feature fabric forwarding`."
  type        = bool
  default     = null
}

variable "hsrp" {
  description = "Enable or disable command `feature hsrp`."
  type        = bool
  default     = null
}

variable "interface_vlan" {
  description = "Enable or disable command `feature interface-vlan`."
  type        = bool
  default     = null
}

variable "isis" {
  description = "Enable or disable command `feature isis`."
  type        = bool
  default     = null
}

variable "lacp" {
  description = "Enable or disable command `feature lacp`."
  type        = bool
  default     = null
}

variable "lldp" {
  description = "Enable or disable command `feature lldp`."
  type        = bool
  default     = null
}

variable "macsec" {
  description = "Enable or disable command `feature macsec`."
  type        = bool
  default     = null
}

variable "netflow" {
  description = "Enable or disable command `feature netflow`."
  type        = bool
  default     = null
}

variable "nv_overlay" {
  description = "Enable or disable command `feature nv overlay`."
  type        = bool
  default     = null
}

variable "ospf" {
  description = "Enable or disable command `feature ospf`."
  type        = bool
  default     = null
}

variable "ospfv3" {
  description = "Enable or disable command `feature ospfv3`."
  type        = bool
  default     = null
}

variable "pim" {
  description = "Enable or disable command `feature pim`."
  type        = bool
  default     = null
}

variable "ptp" {
  description = "Enable or disable command `feature ptp`."
  type        = bool
  default     = null
}

variable "pvlan" {
  description = "Enable or disable command `feature pvlan`."
  type        = bool
  default     = null
}

variable "ssh" {
  description = "Enable or disable command `feature ssh`."
  type        = bool
  default     = null
}

variable "tacacs" {
  description = "Enable or disable command `feature tacacs`."
  type        = bool
  default     = null
}

variable "telnet" {
  description = "Enable or disable command `feature telnet`."
  type        = bool
  default     = null
}

variable "udld" {
  description = "Enable or disable command `feature udld`."
  type        = bool
  default     = null
}

variable "vn_segment" {
  description = "Enable or disable command `feature vn segment`."
  type        = bool
  default     = null
}

variable "vpc" {
  description = "Enable or disable command `feature vpc`."
  type        = bool
  default     = null
}
