
variable "vsphere_server" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

variable "vsphere_datacenter" {
  type = string
}

variable "vsphere_datastore" {
  type = string
}

variable "vsphere_cluster" {
  type = string
}

variable "vsphere_network" {
  type = string
}

variable "vm_template_name" {
  type    = string
  default = "centos7-template"
}

variable "vm_name" {
  type = string
}

variable "vm_count" {
  type    = number
  default = 3
}

variable "vm_enable_logging" {
  type    = bool
  default = true
}

variable "vm_folder" {
  type = string
}

variable "vm_guest_id" {
  type    = string
  default = "centos7_64Guest"
}

variable "vm_num_cpus" {
  type    = number
  default = 1
}

variable "vm_cores_per_socket" {
  type    = number
  default = 1
}

variable "vm_memory" {
  type    = number
  default = 2048
}

variable "vm_memory_limit" {
  type    = number
  default = 2048
}

variable "vm_cdrom_client_device" {
  type    = bool
  default = true
}

variable "vm_scsi_type" {
  type    = string
  default = "pvscsi"
}

variable "vm_disk_mode" {
  type    = string
  default = "persistent"
}

variable "vm_disk_label" {
  type    = string
  default = "disk0"
}

variable "vm_disk_size" {
  type = number
  default = 30
}

variable "vm_disk_thin_provisioned" {
  type = bool
  default = true
}

variable "vm_network_interface_adapter_type" {
  type = string
  default = "vmxnet3"
}

variable "vm_customize_time_zone" {
  type = string
  default = "UTC"
}

variable "vm_customize_domain" {
  type = string
  default = "example.internal"
}

variable "vm_customize_ipv4_address" {
  type = string
}

variable "vm_customize_ipv4_netmask" {
  type = number
  default = 24
}

variable "vm_customize_dns_server_list" {
  type = list(string)
  default = ["8.8.8.8", "8.8.4.4"]
}

variable "vm_customize_ipv4_gateway" {
  type = string
}
