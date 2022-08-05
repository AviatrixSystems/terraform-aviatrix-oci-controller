# Aviatrix - Terraform Modules OCI - Initialize Aviatrix Controller 

## Description

This Terraform module initializes a newly created Aviatrix Controller.

## Usage example

See [examples](https://github.com/AviatrixSystems/terraform-aviatrix-oci-controller/blob/master/example/README.md)


## Variables

The following variables are requires in aviatrix_controller_initialize module:

|           Attribute           |                      Description                       |
|:-----------------------------:|:------------------------------------------------------:|
|   avx_controller_public_ip    |         Aviatrix controller public IP address.         |
|   avx_controller_private_ip   |        Aviatrix controller private IP address.         |
|  avx_controller_admin_email   |        Aviatrix controller admin email address.        |
| avx_controller_admin_password |          Aviatrix controller admin password.           |
|        oci_tenancy_id         |                     Tenancy OCID.                      |
|          oci_user_id          |                       User OCID.                       |
|      oci_compartment_id       |                   Compartment OCID.                    |
|       oci_api_key_path        |                   API key file path.                   |
|         account_email         |       Aviatrix controller access account email.        |
|      access_account_name      |        Aviatrix controller access account name.        |
|     aviatrix_customer_id      |             Aviatrix customer license id".             |
|      controller_version       | Aviatrix Controller version. Default value: "latest".  |

