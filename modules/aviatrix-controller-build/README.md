# Aviatrix - Terraform Modules OCI - Build Aviatrix Controller

## Description

This Terraform module creates an Aviatrix Controller and related components in OCI.

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

The following variables are optional in aviatrix_controller_build module:

|      Attribute      |        Default value         |                        Description                        |
|:-------------------:|:----------------------------:|:---------------------------------------------------------:|
|   product_version   | BYOL: "6.3.1", PAID: "6.3.0" | Aviatrix Controller Version available in the Marketplace. |
| availability_domain |              1               |                 OCI Availability Domains.                 |
|   vm_display_name   |          controller          |                     VM display name.                      |
|  vm_compute_shape   |        VM.Standard2.2        |                     VM compute shape.                     |
|  vcn_display_name   |             vcn              |                     VCN display name.                     |
|    vcn_dns_label    |             vcn              |                      VCN DNS label.                       |
|   vcn_cidr_block    |         10.0.0.0/16          |                      VCN CIDR block.                      |
| subnet_display_name |            subnet            |                   Subnet display name.                    |
|  subnet_cidr_block  |         10.0.0.0/24          |                    Subnet CIDR block.                     |
|  subnet_dns_label   |            subnet            |                     Subnet DNS label.                     |
|  nsg_display_name   |     controller-sec-group     |           Network security group display name.            |

## Outputs

aviatrix_controller_build module will return the following outputs:

|              Key               |      Description       |
|:------------------------------:|:----------------------:|
| aviatrix_controller_public_ip  | Controller public IP.  |
| aviatrix_controller_private_ip | Controller private IP. |
|    aviatrix_controller_url     |    Controller URL.     |
  