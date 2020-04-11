
# vCenter user name (no defaults):
vsphere_user   = ""

# vCenter server ip or dns name (no defaults):
vsphere_server = ""


# Datacenter name where virtual machines will be deployed (no defaults):
vsphere_datacenter = ""

# Datastore name where virtual machines will be deployed (no defaults):
vsphere_datastore  = ""

# Cluster name where virtual machines will be deployed (no defaults):
vsphere_cluster    = ""

# Name of network virtual machine's
# network interface will be assigned to (no defaults):
vsphere_network    = ""


# Name of virtual machine template used to deploy from (default "centos7-template"):
# vm_template_name = "centos7-template"

# Prefix of virtual machine names, to which numbers will be added, like 01, 02, 03 etc.
# example(!):
vm_name          = "rear"

# Number of virtual machines to deploy (default 3):
# vm_count         = 3

# Enable logging of virual machine events to a log file in the datastore (default true):
# vm_enable_logging = true

# Folder name where virtual machines will be deployed (no defaults):
vm_folder         = ""

# OS distribution which is deployed on virtual machine,
# in our case it is CentOS7 (default "centos7_64Guest"):
# vm_guest_id       = "centos7_64Guest"


# vCPU count assigned to virtual machine (default 1):
# vm_num_cpus         = 1

# Number of cores per socket in virtual machine (default 1):
# vm_cores_per_socket = 1


# Size of virtual machines memory in megabytes (default 2048):
# vm_memory           = 2048

# Upper limit of virtual memory in megabytes that can be consumed
# by virtual machine (default 2048):
# vm_memory_limit     = 2048


# CDROM device should be backed by remote client device (default true):
# vm_cdrom_client_device = true


# Virtual storage controller type for virtual machine (default "pvscsi"):
# vm_scsi_type           = "pvscsi"


# Label for virtual machine's disk (default "disk0"):
# vm_disk_label            = "disk0"

# Size of virtual machine's disk im gigabytes (default 30):
# vm_disk_size             = 30

# If virtual machine's disk set to thin provisioned mode, where
# space for files will be allocated on an as-needed basis (default true):
# vm_disk_thin_provisioned = true


# Network interface type (default "vmxnet3"):
# vm_network_interface_adapter_type = "vmxnet3"


# Customization options of virtual machine's OS when cloing from template.

# Time zone (default "UTC"):
# vm_customize_time_zone    = "UTC"

# Domain name (default "example.internal"):
# vm_customize_domain       = "example.internal"

# Prefix of ipv4 addresse of each virtual machine's network interface,
# to which numbers will be added, like 1, 2, 3 etc. (no defaults):
vm_customize_ipv4_address = ""
# Provide your own ipv4 address prefix to satisfy your virtual
# ipv4 addressing in vCenter environment.
# For example, if you will deploy 3 virtual machines and want their addresses be
# 10.0.0.11-13, then fill value of variable with "10.0.0.1" and 1, 2 and 3 will be added.

# Subnet mask to configure on  virtual machine's network interface (default 24):
# vm_customize_ipv4_netmask = 24

# List of DNS servers to configure on virtual machine's
# network interface (default ["8.8.8.8", "8.8.4.4"]):
# vm_customize_dns_server_list  = ["8.8.8.8", "8.8.4.4"]

# ipv4 default gateway to configure on  virtual machine's network interface (no defaults):
vm_customize_ipv4_gateway = ""
