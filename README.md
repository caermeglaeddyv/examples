## Purpose

This repository contains example configurations such as reusable terraform deploys, packer builds, ansible inventories etc. Main purpose is to provide instrumentary to build and test other projects, such as different ansible roles, terraform modules and more.

## Source code structure

```bash
├── packer                                    <-- root folder for example Packer builds
│   └── vsphere-iso                           <-- build for "vsphere-iso builder" (see https://packer.io/docs/builders/vsphere-iso.html)
│       └── rear                              <-- Packer build created for testing ansible role "rear", which purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates virtual machine template with installed clean CentOS 7.6 on it (perl and vmware tools installed, yum update performed)
│           ├── anaconda-ks.cfg               <-- Kickstart configuration file for our build see (https://docs.centos.org/en-US/centos/install-guide/Kickstart2/#sect-kickstart-syntax)
│           ├── main.pkr.hcl                  <-- main configuration file for our Packer build written in new HCL2 syntax (see https://packer.io/guides/hcl/ and https://packer.io/docs/configuration/from-1.5/index.html)
│           ├── packer.auto.pkrvars.hcl       <-- variable definitions for our build
│           ├── secure.auto.pkrvars.hcl       <-- secure variable definitions for our build (note that due to storing sensitive values, this file must not be kept in VCS in clear text form, use tools like "git secret" or "blackbox" from StackExchange to encrypt it)
│           └── variables.pkr.hcl             <-- main variable file, where type and (optionally) default value for every variable is defined
└── terraform                                 <-- root folder for example Terraform deployments
    └── vsphere                               <--  build for "vsphere" provider (see https://www.terraform.io/docs/providers/vsphere/index.html)
        └── rear                              <-- Terraform deployment created for testing ansible role "rear", which purpose is to deploy backup infrastructure on the given servers, but can be used for any other similar purpose so it creates virtual machines from template with installed clean CentOS 7.6 on it (perl and vmware tools installed, yum update performed)
            ├── LICENSE.md                    <-- File that contains license of current project
            ├── main.tf                       <-- main configuration file for our Terraform deployment written in 0.12 Configuration Language (see https://www.terraform.io/docs/configuration/index.html)
            ├── modules                       <-- folder for modules used in this deployment
            ├── outputs.tf                    <-- outputs file
            ├── README.md                     <-- file containing this markdown document
            ├── secure.auto.tfvars            <-- variable definitions for our deployment
            ├── terraform.tfvars              <-- secure variable definitions for our deployment (note that due to storing sensitive values, this file must not be kept in VCS in clear text form, use tools like "git secret" or "blackbox" from StackExchange to encrypt it)
            └── variables.tf                  <-- main variable file, where type and (optionally) default value for every variable is defined
```
