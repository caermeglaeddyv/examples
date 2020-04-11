
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

variable "vsphere_cluster" {
  type = string
}

variable "vsphere_datastore" {
  type = string
}

variable "vsphere_folder" {
  type = string
}

variable "vm_name" {
  type    = string
  default = "centos7-template"
}

variable "vm_guest_os_type" {
  type    = string
  default = "centos7_64Guest"
}

variable "vm_notes" {
  type    = string
  default = "example CentOS7 template build via Hashicorp Packer"
}

variable "vm_CPUs" {
  type    = string
  default = "1"
}

variable "vm_RAM" {
  type    = string
  default = "2048"
}

variable "vm_disk_controller_type" {
  type    = string
  default = "pvscsi"
}

variable "vm_disk_size" {
  type    = string
  default = "30720"
}

variable "vm_disk_thin_provisioned" {
  type    = bool
  default = true
}

variable "vm_network" {
  type = string
}

variable "vm_network_card" {
  type    = string
  default = "vmxnet3"
}

variable "vm_floppy_files" {
  type    = list(string)
  default = ["anaconda-ks.cfg"]
}

variable "vm_boot_command" {
  type    = list(string)
  default = ["<tab> text ks=hd:fd0:/anaconda-ks.cfg <enter><wait>"]
}

variable "iso_checksum" {
  type    = string
  default = "9a2c47d97b9975452f7d582264e9fc16d108ed8252ac6816239a3b58cef5c53d"
}

variable "iso_checksum_type" {
  type    = string
  default = "sha256"
}

variable "iso_paths" {
  type = list(string)
}

variable "ssh_username" {
  type    = string
  default = "root"
}

variable "ssh_password" {
  type = string
}
