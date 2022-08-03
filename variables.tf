variable "tenancy_ocid" {
  type        = string
  description = "Tenancy OCID."
}

variable "compartment_ocid" {
  type        = string
  description = "Compartment OCID."
}

variable "user_ocid" {
  type        = string
  description = "User OCID."
}

variable "fingerprint" {
  type        = string
  description = "Fingerprint of the public key."
}

variable "ssh_public_key" {
  type        = string
  description = "Public key file path."
}

variable "private_key_path" {
  type        = string
  description = "Private key file path."
}

variable "license_model" {
  type        = string
  description = "Marketplace license model: 'BYOL' or 'PAID'."
  default     = "BYOL"
}

variable "region" {
  type        = string
  description = "Region."
  default = "us-ashburn-1"
}

variable "incoming_ssl_cidrs" {
  type        = list(string)
  description = "The CIDRs to be allowed for HTTPS(port 443) access to the Aviatrix Controller."
}

variable "avx_controller_admin_email" {
  type        = string
  description = "aviatrix controller admin email address"
}

variable "avx_controller_admin_password" {
  type        = string
  description = "aviatrix controller admin password"
}

variable "account_email" {
  type        = string
  description = "aviatrix controller access account email"
}

variable "access_account_name" {
  type        = string
  description = "aviatirx controller access account name"
}

variable "aviatrix_customer_id" {
  type        = string
  description = "aviatrix customer license id"
}

variable "controller_version" {
  type        = string
  description = "Aviatrix Controller version"
  default     = "latest"
}

