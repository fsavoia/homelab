## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | >= 4.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcn"></a> [vcn](#module\_vcn) | oracle-terraform-modules/vcn/oci | 3.6.0 |

## Resources

| Name | Type |
|------|------|
| [oci_core_security_list.private-security-list](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public-security-list](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vcn-private-subnet](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_subnet.vcn-public-subnet](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment OCID | `string` | n/a | yes |
| <a name="input_private_security_list_name"></a> [private\_security\_list\_name](#input\_private\_security\_list\_name) | Private Security List Name | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#input\_private\_subnet\_cidr\_block) | CIDR block for private subnet | `string` | n/a | yes |
| <a name="input_private_subnet_display_name"></a> [private\_subnet\_display\_name](#input\_private\_subnet\_display\_name) | Display name for private subnet | `string` | n/a | yes |
| <a name="input_public_cidr_block"></a> [public\_cidr\_block](#input\_public\_cidr\_block) | CIDR block for public subnet | `string` | n/a | yes |
| <a name="input_public_security_list_name"></a> [public\_security\_list\_name](#input\_public\_security\_list\_name) | Public Security List Name | `string` | n/a | yes |
| <a name="input_public_subnet_display_name"></a> [public\_subnet\_display\_name](#input\_public\_subnet\_display\_name) | Display name for public subnet | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region | `string` | n/a | yes |
| <a name="input_vcn_cidrs"></a> [vcn\_cidrs](#input\_vcn\_cidrs) | VCN CIDRs | `list(string)` | n/a | yes |
| <a name="input_vcn_dns_label"></a> [vcn\_dns\_label](#input\_vcn\_dns\_label) | VCN DNS Label | `string` | n/a | yes |
| <a name="input_vcn_name"></a> [vcn\_name](#input\_vcn\_name) | VCN Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id-for-for-route-table-that-includes-the-nat-gateway"></a> [id-for-for-route-table-that-includes-the-nat-gateway](#output\_id-for-for-route-table-that-includes-the-nat-gateway) | OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway. |
| <a name="output_id-for-route-table-that-includes-the-internet-gateway"></a> [id-for-route-table-that-includes-the-internet-gateway](#output\_id-for-route-table-that-includes-the-internet-gateway) | OCID of the internet-route table. This route table has an internet gateway to be used for public subnets |
| <a name="output_nat-gateway-id"></a> [nat-gateway-id](#output\_nat-gateway-id) | OCID for NAT gateway |
| <a name="output_private-security-list-OCID"></a> [private-security-list-OCID](#output\_private-security-list-OCID) | n/a |
| <a name="output_private-security-list-name"></a> [private-security-list-name](#output\_private-security-list-name) | n/a |
| <a name="output_private-subnet-OCID"></a> [private-subnet-OCID](#output\_private-subnet-OCID) | n/a |
| <a name="output_private-subnet-name"></a> [private-subnet-name](#output\_private-subnet-name) | n/a |
| <a name="output_public-security-list-OCID"></a> [public-security-list-OCID](#output\_public-security-list-OCID) | n/a |
| <a name="output_public-security-list-name"></a> [public-security-list-name](#output\_public-security-list-name) | n/a |
| <a name="output_public-subnet-OCID"></a> [public-subnet-OCID](#output\_public-subnet-OCID) | n/a |
| <a name="output_public-subnet-name"></a> [public-subnet-name](#output\_public-subnet-name) | n/a |
| <a name="output_vcn_id"></a> [vcn\_id](#output\_vcn\_id) | OCID of the VCN that is created |
