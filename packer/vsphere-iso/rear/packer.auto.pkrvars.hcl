
# vCenter server ip or dns name (no defaults):
vsphere_server = ""

# vCenter user name (no defaults):
vsphere_user   = ""


# Datacenter name where template will deployed (no defaults):
vsphere_datacenter = ""

# Cluster name where template will be deployed (no defaults):
vsphere_cluster    = ""

# Datastore name where template will be deployed (no defaults):
vsphere_datastore  = ""

# Folder name where template will be deployed (no defaults):
vsphere_folder     = ""


# Name of builded virtual machine template (default "centos7-template"):
# vm_name          = "centos7-template"

# OS distribution which will be installed on virtual machine,
# in our case it is CentOS7 (default "centos7_64Guest"):
# vm_guest_os_type = "centos7_64Guest"
# Full list of values can be found at:
# https://code.vmware.com/apis/358/vsphere/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html

# Notes for builded virtual machine:
# (default "example CentOS7 template build via Hashicorp Packer")
# vm_notes         = "example CentOS7 template build via Hashicorp Packer"


# vCPU count assigned to virtual machine (default 1):
# vm_CPUs = "1"

# RAM amount (in megabytes) assigned to virtual machine (default 2048):
# vm_RAM  = "2048"


# Virtual storage controller type for virtual machine (default "pvscsi"):
# vm_disk_controller_type  = "pvscsi"

# Virtual disk size in megabytes (default "30720"):
# vm_disk_size             = "30720"
# If you want to change this, remember that
# anaconda-ks.cfg kickstart file need corrections too,
# you will need to resize lvm devices to satisfy new .vmdk size.

# IF virtual disk provisioning is thin or not (default true):
# vm_disk_thin_provisioned = true


# Name of network virtual machine's
# network interface will be assigned to (no defaults):
vm_network      = ""

# Virtual machine's network interface type (default "vmxnet3"):
# vm_network_card = "vmxnet3"


# Files will be added to virtual machine's
# floppy drive (default "anaconda-ks.cfg"):
# vm_floppy_files = ["anaconda-ks.cfg"]
# If you want to change name of kickstart file, or to add additional files to
# floppy drive, don't forget to uncomment line above and assign new value(s) to it.

# Commands that will be run at boot of installation media
# (default ["<tab> text ks=hd:fd0:/anaconda-ks.cfg <enter><wait>"]):
# vm_boot_command = ["<tab> text ks=hd:fd0:/anaconda-ks.cfg <enter><wait>"]
# If you want to change name of kickstart file, don't forget
# to uncomment line above and make corrections to it.


# Checksum value of .iso file, can be found on it's download page
# (default "9a2c47d97b9975452f7d582264e9fc16d108ed8252ac6816239a3b58cef5c53d"):
# iso_checksum      = "9a2c47d97b9975452f7d582264e9fc16d108ed8252ac6816239a3b58cef5c53d"
# For CentOS 7, file with sha256 checksums can be found on one
# of the mirror's page, for example http://centos.mirror.co.ge/7.7.1908/isos/x86_64/
# To find out that there are no differences between provided checksum and the real checksum
# of downloaded .iso file (to check consistency), in the case with sha256 checksum
# type, you can use sha256sum Linux coreutils binary or, for Windows users,
# you can download it's .exe version from the internet, or use online tool

# Checksum type of .iso file, can be found on it's download page
# (default "sha256"):
# iso_checksum_type = "sha256"
# If you want to use checksum type that differs from one which provided
# with .iso file, you must calculate it yourself. To do that, for example, in the case
# with sha512 checksum type, you can use sha512sum Linux coreutils binary or, for 
# Windows users, you can download it's .exe version from the internet, or use online tool

# Datastore paths that contain .iso file (no defaults).
# example(!):
iso_paths         = ["[datastore01] ISO/CentOS-7-x86_64-Minimal-1908.iso"]
# Download .iso file and then upload it to some folder (for example "ISO") inside some
# datastore (for example "datastore01"), and fill the line above with correct values.
# For CentOS 7, .iso files can be found on one of the mirror's page,
# for example http://centos.mirror.co.ge/7.7.1908/isos/x86_64/

# Username which is allowed to connect via ssh to server after build
# (default "root"):
# ssh_username = "root"
# If you want to change this to other than root, remember that
# anaconda-ks.cfg kickstart file need corrections too,
# you will need to add instructions there to create new user
# or use existing "ansible" user
