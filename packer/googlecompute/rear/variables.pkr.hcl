
variable "google_account_file" {
  type = string
}

variable "google_project_id" {
  type = string
}

variable "google_zone" {
  type = string
}

variable "google_source_image_family" {
  type    = string
  default = "centos-7"
}

variable "image_name" {
  type    = string
  default = "centos7-template"
}

variable "image_description" {
  type    = string
  default = "example CentOS7 template build via Hashicorp Packer"
}

variable "image_family" {
  type    = string
  default = "centos-7"
}

variable "image_disk_size" {
  type    = number
  default = 30
}

variable "image_disk_type" {
  type    = string
  default = "pd-standard"
}

variable "image_instance_name" {
  type    = string
  default = "centos7-template"
}

variable "image_machine_type" {
  type    = string
  default = "g1-small"
}

variable "image_startup_script" {
  type    = string
  default = "yum update -y"
}

variable "image_ssh_username" {
  type    = string
  default = "ansible"
}
