## Purpose

This repository contains example configurations such as reusable terraform deploys, packer builds, ansible inventories etc. Main purpose is to provide instrumentary to build and test other projects, such as different ansible roles, terraform modules and more.

## Source code structure

```bash
├── packer                                    <-- root folder for example Packer builds
│   ├── googlecompute                         <-- build for "googlecompute" builder (see https://www.packer.io/docs/builders/googlecompute.html)
│   │   └── rear                              <-- Packer build created for testing ansible role "rear" on Google Cloud Platform, and its purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates instance image with installed clean CentOS 7 on it (yum update performed)
│   │       ├── main.pkr.hcl                  <-- main configuration file for our Packer build written in new HCL2 syntax (see https://www.packer.io/guides/hcl/ and https://www.packer.io/docs/configuration/from-1.5/index.html)
│   │       ├── packer.auto.pkrvars.hcl       <-- variable definitions for our build
│   │       └── variables.pkr.hcl             <-- main variable file, where type and (optionally) default value for every variable is defined
│   └── vsphere-iso                           <-- build for "vsphere-iso" builder (see https://www.packer.io/docs/builders/vsphere-iso.html)
│       └── rear                              <-- Packer build created for testing ansible role "rear" on vCenter infrastructure, and its purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates virtual machine template with installed clean CentOS 7.6 on it (perl and vmware tools installed, yum update performed)
│           ├── anaconda-ks.cfg               <-- Kickstart configuration file for our build see (https://docs.centos.org/en-US/centos/install-guide/Kickstart2/#sect-kickstart-syntax)
│           ├── main.pkr.hcl                  <-- main configuration file for our Packer build written in new HCL2 syntax (see https://www.packer.io/guides/hcl/ and https://www.packer.io/docs/configuration/from-1.5/index.html)
│           ├── packer.auto.pkrvars.hcl       <-- variable definitions for our build
│           ├── secure.auto.pkrvars.hcl       <-- secure variable definitions for our build (note that due to storing sensitive values, this file must not be kept in VCS in clear text form, use tools like "git secret" or "blackbox" from StackExchange to encrypt it)
│           └── variables.pkr.hcl             <-- main variable file, where type and (optionally) default value for every variable is defined
└── terraform                                 <-- root folder for example Terraform deployments
    ├── google                                <-- deployment for "google" provider (see https://www.terraform.io/docs/providers/google/index.html)
    │   └── rear                              <-- Terraform deployment created for testing ansible role "rear" on Google Cloud Platform, and its purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates virtual machines from template with installed clean CentOS 7 on it (yum update performed)
    │       ├── modules                       <-- folder for modules used in this deployment
    │       ├── gcp                           <-- example ssh private key for use in deployment
    │       ├── gcp.pub                       <-- example ssh publics key for use in deployment
    │       ├── main.tf                       <-- main configuration file for our Terraform deployment written in 0.12 Configuration Language (see https://www.terraform.io/docs/configuration/index.html)
    │       ├── outputs.tf                    <-- outputs file
    │       ├── terraform.tfvars              <-- variable definitions for our deployment
    │       └── variables.tf                  <-- main variable file, where type and (optionally) default value for every variable is defined
    └── vsphere                               <-- deployment for "vsphere" provider (see https://www.terraform.io/docs/providers/vsphere/index.html)
        └── rear                              <-- Terraform deployment created for testing ansible role "rear" on vCenter infrastructure, and its purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates virtual machines from template with installed clean CentOS 7.6 on it (perl and vmware tools installed, yum update performed)
            ├── modules                       <-- folder for modules used in this deployment
            ├── main.tf                       <-- main configuration file for our Terraform deployment written in 0.12 Configuration Language (see https://www.terraform.io/docs/configuration/index.html)
            ├── outputs.tf                    <-- outputs file
            ├── secure.auto.tfvars            <-- secure variable definitions for our deployment (note that due to storing sensitive values, this file must not be kept in VCS in clear text form, use tools like "git secret" or "blackbox" from StackExchange to encrypt it)
            ├── terraform.tfvars              <-- variable definitions for our deployment
            └── variables.tf                  <-- main variable file, where type and (optionally) default value for every variable is defined
```
