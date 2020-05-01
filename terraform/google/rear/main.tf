
# Main configuration file.
# Terraform CLI 0.12 Configuration Language documentation:
# https://www.terraform.io/docs/configuration/index.html

# To start deploy process, install terraform binary like said here:
# https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform
# Then run "terraform init" from the root of directory containing
# terraform configuration and variable files, including this one
# to download latest version of plugin for "google" provider.
# Then (optionally) run "terraform plan" to see what will be deployed
# to your infrastructure, and finally "terraform apply" to deploy virtual machines.

# Reference to earch configurable parameter here and much more
# can be found on official documentation of "google" Terraform Provider:
# https://www.terraform.io/docs/providers/google/index.html
# Type of each variable and default values can be found inside
# "variables.tf" file. Description of each variable and actual values,
# which must be filled out, can be found inside file.

provider "google" {
  credentials = file(var.google_credentials_file)

  project = var.google_project
  region  = var.google_region
}

data "google_compute_zones" "zones" {
}

resource "google_compute_instance" "rear" {
  count = var.instance_count

  name     = join("", [var.instance_name, "0", "${count.index + 1}"])
  hostname = join("", [var.instance_name, "0", "${count.index + 1}", ".", var.instance_domain])

  desired_status = var.instance_desired_status
  enable_display = false

  zone         = data.google_compute_zones.zones.names[count.index]
  machine_type = var.instance_machine_type

  metadata = {
    ssh-keys       = var.instance_ssh_keys
    startup_script = var.instance_startup_script
  }

  boot_disk {
    device_name = join("", [var.instance_name, "0", "${count.index + 1}"])
    mode        = var.instance_disk_mode

    initialize_params {
      image = var.instance_boot_image
      size  = var.instance_disk_size
      type  = var.instance_disk_type
    }
  }

  network_interface {
    network = var.instance_network
    access_config {}
  }
}
