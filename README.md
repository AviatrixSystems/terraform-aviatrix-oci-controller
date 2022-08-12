# OCI Aviatrix - Terraform Module

## Descriptions
This Terraform module allows you to launch the Aviatrix Controller and create the Aviatrix access account connecting to the existing Controller on OCI.

## Usage example

See [examples](https://github.com/AviatrixSystems/terraform-aviatrix-oci-controller/blob/master/example/README.md)

## Variables

The following variables are requires in aviatrix_controller_build module:

|      Attribute      |                                   Description                                   |
|:-------------------:|:-------------------------------------------------------------------------------:|
|    tenancy_ocid     |                                  Tenancy OCID.                                  |
|  compartment_ocid   |                                Compartment OCID.                                |
|      user_ocid      |                                   User OCID.                                    |
|     fingerprint     |                         Fingerprint of the public key.                          |
|  private_key_path   |                             Private key file path.                              |
|       region        |                                     Region.                                     |
|    license_model    |                   Marketplace license model: "BYOL" or "PAID"                   |
| incoming_ssl_cidrs  | The CIDRs to be allowed for HTTPS(port 443) access to the Aviatrix Controller.  |

The following variables are requires in aviatrix_controller_initialize module:

|           Attribute           |                      Description                      |
|:-----------------------------:|:-----------------------------------------------------:|
|   avx_controller_public_ip    |        Aviatrix controller public IP address.         |
|   avx_controller_private_ip   |        Aviatrix controller private IP address.        |
|  avx_controller_admin_email   |       Aviatrix controller admin email address.        |
| avx_controller_admin_password |          Aviatrix controller admin password.          |
|        oci_tenancy_id         |                     Tenancy OCID.                     |
|          oci_user_id          |                      User OCID.                       |
|      oci_compartment_id       |                   Compartment OCID.                   |
|       oci_api_key_path        |                  API key file path.                   |
|         account_email         |       Aviatrix controller access account email.       |
|      access_account_name      |       Aviatrix controller access account name.        |
|     aviatrix_customer_id      |             Aviatrix customer license id.             |
|      controller_version       | Aviatrix Controller version. Default value: "latest". |


The following variables are optional in aviatrix_controller_build module:

|      Attribute      |    Default value     |                        Description                        |
|:-------------------:|:--------------------:|:---------------------------------------------------------:|
|   product_version   |        6.3.0         | Aviatrix Controller Version available in the Marketplace. |
| availability_domain |          1           |                 OCI Availability Domains.                 |
|   vm_display_name   |      controller      |                     VM display name.                      |
|  vm_compute_shape   |    VM.Standard2.2    |                     VM compute shape.                     |
|  vcn_display_name   |         vcn          |                     VCN display name.                     |
|    vcn_dns_label    |         vcn          |                      VCN DNS label.                       |
|   vcn_cidr_block    |     10.0.0.0/16      |                      VCN CIDR block.                      |
| subnet_display_name |        subnet        |                   Subnet display name.                    |
|  subnet_cidr_block  |     10.0.0.0/24      |                    Subnet CIDR block.                     |
|  subnet_dns_label   |        subnet        |                     Subnet DNS label.                     |
|  nsg_display_name   | controller-sec-group |           Network security group display name.            |

## Outputs

aviatrix_controller_build module will return the following outputs:

|              Key               |      Description       |
|:------------------------------:|:----------------------:|
| aviatrix_controller_public_ip  | Controller public IP.  |
| aviatrix_controller_private_ip | Controller private IP. |
|    aviatrix_controller_url     |    Controller URL.     |

## Prerequisites
1. [Terraform 0.13](https://www.terraform.io/downloads.html) - execute terraform files
2. [Python3](https://www.python.org/downloads/) - execute `aviatrix_controller_init.py` python script
3. Create the Python virtual environment and install required dependencies in the terminal
``` shell
 python3 -m venv venv
```
This command will create the virtual environment. In order to use the virtual environment, it needs to be activated by the following command
``` shell
 source venv/bin/activate
```
In order to run `aviatrix_controller_init.py` python script, dependencies listed in `requirements.txt` need to be stalled by the following command
``` shell
 pip install -r requirements.txt
```

## Available Modules

|                                  Module                                  |                                                                                                        Description                                                                                                        |
|:------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|      [aviatrix_controller_build](modules/aviatrix-controller-build)      |                                                      Builds the Aviatrix Controller VM on OCI <br />[Source Code] https://github.com/oracle-quickstart/oci-aviatrix                                                       |
| [aviatrix_controller_initialize](modules/aviatrix-controller-initialize) | Initializes the Aviatrix Controller (setting admin email, setting admin password, upgrading controller version, and setting access account) <br />[Source Code] https://github.com/AviatrixSystems/terraform-module-azure |