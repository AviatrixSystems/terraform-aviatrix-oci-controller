module "aviatrix_controller_build" {
  source             = "./module/aviatrix-controller-build"
  tenancy_ocid       = var.tenancy_ocid
  compartment_ocid   = var.compartment_ocid
  user_ocid          = var.user_ocid
  fingerprint        = var.fingerprint
  ssh_public_key     = var.ssh_public_key
  private_key_path   = var.private_key_path
  license_model      = var.license_model
  region             = var.region
  incoming_ssl_cidrs = var.incoming_ssl_cidrs
}

module "aviatrix_controller_initialize" {
  source                        = "./module/aviatrix-controller-initialize"
  avx_controller_public_ip      = module.aviatrix_controller_build.aviatrix_controller_public_ip
  avx_controller_private_ip     = module.aviatrix_controller_build.aviatrix_controller_private_ip
  avx_controller_admin_email    = var.avx_controller_admin_email
  avx_controller_admin_password = var.avx_controller_admin_password
  oci_tenancy_id                = var.tenancy_ocid
  oci_user_id                   = var.user_ocid
  oci_compartment_id            = var.compartment_ocid
  oci_api_key_path              = var.private_key_path
  account_email                 = var.account_email
  access_account_name           = var.access_account_name
  aviatrix_customer_id          = var.aviatrix_customer_id
  controller_version            = var.controller_version
}


