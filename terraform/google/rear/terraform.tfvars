
# Path to service account key file (no defaults):
google_credentials_file = ""


# The default project to manage resources in (no defaults):
google_project = ""

# The default region to manage resources in (no defaults):
google_region = ""


# Number of compute instances to deploy (default 3):
# instance_count = 3


# Prefix of compute instance names, to which numbers will be added, like 01, 02, 03 etc (no defaults).
# example(!):
instance_name = "rear"

# Domain name (default "example.internal"):
# instance_domain = "example.internal"


# Desired status of the instances (default "RUNNING"):
# instance_desired_status = "RUNNING"


# Name of the machine type to create, which is set of virtualized hardware resources
# (see https://cloud.google.com/compute/all-pricing, default "g1-small"):
# instance_machine_type = "g1-small"


# SSH public key attached to the instance (default "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1GRdCWHC+4c5vtN0/pLJCU2QF5Dz+mrAQjD6xrl9fJGOjelJBLKvmZQ0atwBBZsL6t1ZHIMUXd9jOmQFkZ85R7fkY1u3AlzF0UoxNSHstIv7gSDBBGRWdirQrRF0f3Vzia1p9VqeU9k0h9mLjA0pf7UR6pe6e3hXvRbnAqmAQbqJFFa1mdrpeQgDIEySkqeEBraNXMsd7Vm2R+nyf1F2P3zJf1zVWjPSFx6Kggl/F8rnZtGPvvQkF9UHd56fpuwqQ747bMDn2v7a/6gRfe5qoWZsvb07+/cjxqbGyWr1TZlNVt7JBfmpvI4VH3IMVMXkI03TXzR76kiFm4NDgpHFqWnWch/P91qMGc5g+2dk69FxROFTh8hiew58fZ80afVjwD5whNk2yUCIdYlrexGt7gW8fLtKxdlXiImaBlIAj+epIge7rW9g2MrCf46mzn8Ud11pEh4OWyUFrLTbgi+Ivrdx3RGfqgtYCViOWta14irQldHbhVcDIf9kQU3GFspE= ansible").
# example(!):
# instance_ssh_keys = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1GRdCWHC+4c5vtN0/pLJCU2QF5Dz+mrAQjD6xrl9fJGOjelJBLKvmZQ0atwBBZsL6t1ZHIMUXd9jOmQFkZ85R7fkY1u3AlzF0UoxNSHstIv7gSDBBGRWdirQrRF0f3Vzia1p9VqeU9k0h9mLjA0pf7UR6pe6e3hXvRbnAqmAQbqJFFa1mdrpeQgDIEySkqeEBraNXMsd7Vm2R+nyf1F2P3zJf1zVWjPSFx6Kggl/F8rnZtGPvvQkF9UHd56fpuwqQ747bMDn2v7a/6gRfe5qoWZsvb07+/cjxqbGyWr1TZlNVt7JBfmpvI4VH3IMVMXkI03TXzR76kiFm4NDgpHFqWnWch/P91qMGc5g+2dk69FxROFTh8hiew58fZ80afVjwD5whNk2yUCIdYlrexGt7gW8fLtKxdlXiImaBlIAj+epIge7rW9g2MrCf46mzn8Ud11pEh4OWyUFrLTbgi+Ivrdx3RGfqgtYCViOWta14irQldHbhVcDIf9kQU3GFspE= ansible"
# The default value is used to simplify deployment of this example and strongly restricted to use only
# in this example and for test purposes only, for production systems please use your own keypair.
# Public/private keys used for this example can be found in "gcp.pub"/"gcp" files accordingly.

# Script that will be executed on instance startup (default "yum update -y"):
# instance_startup_script = "yum update -y"


# The mode in which to attach boot disk (default "READ_WRITE"):
# instance_disk_mode = "READ_WRITE"


# The image from which to initialize boot disk (default "centos-cloud/centos-7"):
# instance_boot_image = "centos-cloud/centos-7"
# If you want to use custom image created in our Packer example, change this to
# values of "YOUR_PROJECT_NAME/centos-7", for example "white-wolf-210648/centos-7"

# The size of boot disk (default 30):
# instance_disk_size = 30

# The type of boot disk (default "pd-standard"):
# instance_disk_type = "pd-standard"


# The name of network to which default interface will be attached to (default "default"):
# instance_network = "default"
