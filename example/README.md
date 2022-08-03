# Usage Examples

This document contains examples on how to launch modules with various configurations (including using optional arguments).

For full details on available attributes, please see the README.md

## Launching aviatrix_controller_build module, aviatrix_controller_initialize module

The following example will launch aviatrix_controller_build module,  aviatrix_controller_initialize module

```
# aviatrix_controller_build
module "aviatrix_controller_build" {
  source           = "./module/aviatrix-controller-build"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa123456abcd"
  compartment_ocid = "ocid1.compartment.oc1..aaaaaaaa123456abcd"
  user_ocid        = "ocid1.user.oc1..aaaaaaaa123456abcd"
  fingerprint      = "ab:12:cd:34:ef:56:gh:78:ij:90:kl:2d:mn:cc:op:06"
  ssh_public_key   = "/Users/local/.ssh/oci_ssh.pub"
  private_key_path = "/Users/local/oracleidentitycloudservice_key.pem"
  license_model    = "BYOL"
  region           = "us-ashburn-1"
  incoming_ssl_cidrs = ["152.179.42.234/32"]
}

# aviatrix_controller_initialize
module "aviatrix_controller_initialize" {
  source                        = "./module/aviatrix-controller-initialize"
  avx_controller_public_ip      = module.aviatrix_controller_build.aviatrix_controller_public_ip
  avx_controller_private_ip     = module.aviatrix_controller_build.aviatrix_controller_private_ip
  avx_controller_admin_email    = "test666@gmail.com"
  avx_controller_admin_password = "Abcd1234."
  oci_tenancy_id                = "ocid1.tenancy.oc1..aaaaaaaa123456abcd"
  oci_user_id                   = "ocid1.user.oc1..aaaaaaaa123456abcd"
  oci_compartment_id            = "ocid1.compartment.oc1..aaaaaaaa123456abcd"
  oci_api_key_path              = "/Users/local/oracleidentitycloudservice_key.pem"
  account_email                 = "test666@gmail.com"
  access_account_name           = "ociaccessaccount"
  aviatrix_customer_id          = "aviatrix_customer_id"
  controller_version            = "latest"
}

# entire OCI controller module (build + init)
module "aviatrix_controller_build" {
  source           = "./module/aviatrix-controller-build"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa123456abcd"
  compartment_ocid = "ocid1.compartment.oc1..aaaaaaaa123456abcd"
  user_ocid        = "ocid1.user.oc1..aaaaaaaa123456abcd"
  fingerprint      = "ab:12:cd:34:ef:56:gh:78:ij:90:kl:2d:mn:cc:op:06"
  ssh_public_key   = "/Users/local/.ssh/oci_ssh.pub"
  private_key_path = "/Users/local/oracleidentitycloudservice_key.pem"
  license_model    = "BYOL"
  region           = "us-ashburn-1"
  incoming_ssl_cidrs = ["152.179.42.234/32"]
}

module "aviatrix_controller_initialize" {
  source                        = "./module/aviatrix-controller-initialize"
  avx_controller_public_ip      = module.aviatrix_controller_build.aviatrix_controller_public_ip
  avx_controller_private_ip     = module.aviatrix_controller_build.aviatrix_controller_private_ip
  avx_controller_admin_email    = "test666@gmail.com"
  avx_controller_admin_password = "Abcd1234."
  oci_tenancy_id                = "ocid1.tenancy.oc1..aaaaaaaa123456abcd"
  oci_user_id                   = "ocid1.user.oc1..aaaaaaaa123456abcd"
  oci_compartment_id            = "ocid1.compartment.oc1..aaaaaaaa123456abcd"
  oci_api_key_path              = "/Users/local/oracleidentitycloudservice_key.pem"
  account_email                 = "test666@gmail.com"
  access_account_name           = "ociaccessaccount"
  aviatrix_customer_id          = "aviatrix_customer_id"
  controller_version            = "latest"
}
```

## Launching the entire OCI controller module (build + init)

The following example will launch the entire OCI controller module (build + init)

```
module "aviatrix_oci_module" {
  source                        = "github.com/AviatrixSystems/terraform-module-oci.git"
  tenancy_ocid                  = "ocid1.tenancy.oc1..aaaaaaaa123456abcd"
  compartment_ocid              = "ocid1.compartment.oc1..aaaaaaaa123456abcd"
  user_ocid                     = "ocid1.user.oc1..aaaaaaaa123456abcd"
  fingerprint                   = "ab:12:cd:34:ef:56:gh:78:ij:90:kl:2d:mn:cc:op:06"
  ssh_public_key                = "/Users/local/.ssh/oci_ssh.pub"
  private_key_path              = "/Users/local/oracleidentitycloudservice_key.pem"
  license_model                 = "BYOL"
  region                        = "us-ashburn-1"
  incoming_ssl_cidrs            = ["152.179.42.234/32"]
  avx_controller_admin_email    = "test666@gmail.com"
  avx_controller_admin_password = "Abcd1234."
  account_email                 = "test666@gmail.com"
  access_account_name           = "ociaccessaccount"
  aviatrix_customer_id          = "aviatrix_customer_id"
  controller_version            = "latest"
}
```
