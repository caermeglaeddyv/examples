
variable "google_credentials_file" {
  type = string
}

variable "google_project" {
  type = string
}

variable "google_region" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 3
}

variable "instance_name" {
  type = string
}

variable "instance_domain" {
  type    = string
  default = "example.internal"
}

variable "instance_desired_status" {
  type    = string
  default = "RUNNING"
}

variable "instance_machine_type" {
  type    = string
  default = "g1-small"
}

variable "instance_ssh_keys" {
  type    = string
  default = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1GRdCWHC+4c5vtN0/pLJCU2QF5Dz+mrAQjD6xrl9fJGOjelJBLKvmZQ0atwBBZsL6t1ZHIMUXd9jOmQFkZ85R7fkY1u3AlzF0UoxNSHstIv7gSDBBGRWdirQrRF0f3Vzia1p9VqeU9k0h9mLjA0pf7UR6pe6e3hXvRbnAqmAQbqJFFa1mdrpeQgDIEySkqeEBraNXMsd7Vm2R+nyf1F2P3zJf1zVWjPSFx6Kggl/F8rnZtGPvvQkF9UHd56fpuwqQ747bMDn2v7a/6gRfe5qoWZsvb07+/cjxqbGyWr1TZlNVt7JBfmpvI4VH3IMVMXkI03TXzR76kiFm4NDgpHFqWnWch/P91qMGc5g+2dk69FxROFTh8hiew58fZ80afVjwD5whNk2yUCIdYlrexGt7gW8fLtKxdlXiImaBlIAj+epIge7rW9g2MrCf46mzn8Ud11pEh4OWyUFrLTbgi+Ivrdx3RGfqgtYCViOWta14irQldHbhVcDIf9kQU3GFspE= ansible"
}

variable "instance_startup_script" {
  type    = string
  default = "yum update -y"
}

variable "instance_disk_mode" {
  type    = string
  default = "READ_WRITE"
}

variable "instance_boot_image" {
  type    = string
  default = "centos-cloud/centos-7"
}

variable "instance_disk_size" {
  type    = string
  default = 30
}

variable "instance_disk_type" {
  type    = string
  default = "pd-standard"
}

variable "instance_network" {
  type    = string
  default = "default"
}
