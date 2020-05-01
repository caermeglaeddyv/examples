
# Main configuration file, new HCL2 syntax is used instead of .json one.
# Introduction to Packer HCL2:
# https://www.packer.io/guides/hcl/
# Packer HCL Configuration Language documentation:
# https://www.packer.io/docs/configuration/from-1.5/index.html

# To start build process, install packer binary like said here:
# https://www.packer.io/intro/getting-started/install.html
# Then run "packer build ." from the root of directory
# containing packer configuration and variable files, including this one.

# Reference to earch configurable parameter here and much more
# can be found on official documentation of "googlecompute" Packer builder:
# https://www.packer.io/docs/builders/googlecompute.html
# Type of each variable and default values can be found inside
# "variables.pkr.hcl" file. Description of each variable and actual values,
# which must be filled out, can be found inside "packer.auto.pkrvars.hcl" file.

# Source configurations of the build:
source "googlecompute" "centos7-template" {
  account_file = file(var.google_account_file)

  project_id  = var.google_project_id
  zone        = var.google_zone

  source_image_family = var.google_source_image_family

  image_name        = var.image_name
  image_description = var.image_description
  image_family      = var.image_family

  disk_size = var.image_disk_size
  disk_type = var.image_disk_type

  instance_name = var.image_instance_name

  machine_type = var.image_machine_type

  metadata {
    startup_script = var.image_startup_script
  }

  omit_external_ip = false

  ssh_username = var.image_ssh_username

}

# Actual build of template, source(s) that will be executed in the build:
build {
  sources = [
    "source.googlecompute.centos7-template"
  ]

}
