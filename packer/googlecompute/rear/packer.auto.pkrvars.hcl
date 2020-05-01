
# Path to service account key file (no defaults):
google_account_file = ""

# The project that will be used to launch instances and store images (no defaults):
google_project_id = ""

# Zone in which to launch the instance used to create the image (no defaults):
google_zone       = ""


# The source image family which used to create the new image from. The image family
# always returns its latest image that is not deprecated (default "centos-7"):
# google_source_image_family = "centos-7"


# Unique name of the image that will be created by build (no defaults).
# example(!):
image_name        = "centos7-template"

# Description of the image that will be created by build (default "example CentOS 7 template build via Hashicorp Packer"):
# image_description = "example CentOS 7 template build via Hashicorp Packer"

# The name of the image family to which the resulting image belongs. The image family
# always returns its latest image that is not deprecated (default "centos-7"):
# image_family      = "centos-7"


# The size of boot disk (default 30):
# image_disk_size = 30

# The type of boot disk (default "pd-standard"):
# image_disk_type = "pd-standard"


# The unique name of the image that will be created by build (default "centos7-template"):
# image_instance_name = "centos7-template"


# Name of the machine type to create, which is set of virtualized hardware resources
# (see https://cloud.google.com/compute/all-pricing, default "g1-small"):
# image_machine_type = "g1-small"


# Script that will be executed on instance startup (default "yum update -y"):
# image_startup_script = "yum update -y"


# User with sudo access, which will be created by packer (default "ansible"):
# image_ssh_username = "ansible"
