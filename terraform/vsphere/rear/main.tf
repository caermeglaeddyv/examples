
# Main configuration file.
# Terraform CLI 0.12 Configuration Language documentation:
# https://www.terraform.io/docs/configuration/index.html

# To start deploy process, install terraform binary like said here:
# https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform
# Then run "terraform init" from the root of directory containing
# terraform configuration and variable files, including this one
# to download latest version of plugin for "vsphere" provider.
# Then (optionally) run "terraform plan" to see what will be deployed
# to your infrastructure, and finally "terraform apply" to deploy virtual machines.

# Reference to earch configurable parameter here and much more
# can be found on official documentation of "vsphere" Terraform Provider:
# https://www.terraform.io/docs/providers/vsphere/index.html
# Type of each variable and default values can be found inside
# "variables.tf" file. Description of each variable and actual values,
# which must be filled out, can be found inside "terraform.tfvars"
# and "secure.auto.tfvars" files.

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "centos7-template" {
  name          = var.vm_template_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_virtual_machine" "rear" {
  name = join("", [upper(var.vm_name), "0", "${count.index + 1}"])

  count          = var.vm_count
  enable_logging = var.vm_enable_logging
  folder         = var.vm_folder
  guest_id       = var.vm_guest_id

  num_cpus             = var.vm_num_cpus
  num_cores_per_socket = var.vm_cores_per_socket
  
  memory       = var.vm_memory
  memory_limit = var.vm_memory_limit

  cdrom {
    client_device = var.vm_cdrom_client_device
  }

  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  scsi_type        = var.vm_scsi_type

  disk {
    disk_mode        = var.vm_disk_mode
    label            = var.vm_disk_label
    size             = var.vm_disk_size
    thin_provisioned = var.vm_disk_thin_provisioned
  }

  network_interface {
    adapter_type = var.vm_network_interface_adapter_type
    network_id   = data.vsphere_network.network.id
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.centos7-template.id

    customize {
      linux_options {
        host_name = join("", [var.vm_name, "0", "${count.index + 1}"])
        time_zone = var.vm_customize_time_zone
        domain    = var.vm_customize_domain
      }

      network_interface {
        ipv4_address = join("", [var.vm_customize_ipv4_address, "${count.index + 1}"])
        ipv4_netmask = var.vm_customize_ipv4_netmask
      }

      dns_server_list = var.vm_customize_dns_server_list

      ipv4_gateway = var.vm_customize_ipv4_gateway
    }
  }
}
