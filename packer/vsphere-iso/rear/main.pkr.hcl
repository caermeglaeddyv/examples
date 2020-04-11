
# Main configuration file, new HCL2 syntax is used instead of .json one.
# Introduction to Packer HCL2:
# https://packer.io/guides/hcl/
# Packer HCL Configuration Language documentation:
# https://packer.io/docs/configuration/from-1.5/index.html

# To start build process, install packer binary like said here:
# https://packer.io/intro/getting-started/install.html
# Then run "packer build ." from the root of directory
# containing packer configuration and variable files, including this one.

# Reference to earch configurable parameter here and much more
# can be found on official documentation of "vsphere-iso" Packer builder:
# https://packer.io/docs/builders/vsphere-iso.html
# Type of each variable and default values can be found inside
# "variables.pkr.hcl" file. Description of each variable and actual values,
# which must be filled out, can be found inside "packer.auto.pkrvars.hcl"
# and "secure.auto.pkrvars.hcl" files.

# Source configurations of the build:
source "vsphere-iso" "centos7-template" {
  vcenter_server = var.vsphere_server
  username       = var.vsphere_user
  password       = var.vsphere_password

  insecure_connection = true
  convert_to_template = true

  datacenter = var.vsphere_datacenter
  cluster    = var.vsphere_cluster
  datastore  = var.vsphere_datastore
  folder     = var.vsphere_folder

  vm_name       = var.vm_name
  guest_os_type = var.vm_guest_os_type
  notes         = var.vm_notes

  CPUs            = var.vm_CPUs
  RAM             = var.vm_RAM
  RAM_reserve_all = false

  disk_controller_type  = var.vm_disk_controller_type
  disk_size             = var.vm_disk_size
  disk_thin_provisioned = var.vm_disk_thin_provisioned

  network      = var.vm_network
  network_card = var.vm_network_card

  floppy_files = var.vm_floppy_files
  boot_command = var.vm_boot_command

  iso_checksum      = var.iso_checksum
  iso_checksum_type = var.iso_checksum_type
  iso_paths         = var.iso_paths

  ssh_username = var.ssh_username
  ssh_password = var.ssh_password

  # If you want to export template in OVF, uncomment lines
  # of "export" block below and fill "output_directory" variable
  # with the name of future template's directory relative to this file:
  # export {
  #   force            = true
  #   output_directory = "output_vsphere_centos7_template"
  # }

}

# Actual build of .iso file, source(s) that will be executed in the build:
build {
  sources = [
    "source.vsphere-iso.centos7-template"
  ]

}
