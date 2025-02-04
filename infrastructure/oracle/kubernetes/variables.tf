variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "vcn_name" {
  description = "VCN Name"
  type        = string
}

variable "vcn_dns_label" {
  description = "VCN DNS Label"
  type        = string
}

variable "vcn_cidrs" {
  description = "VCN CIDRs"
  type        = list(string)
}

variable "private_security_list_name" {
  description = "Private Security List Name"
  type        = string
}
variable "public_security_list_name" {
  description = "Public Security List Name"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for private subnet"
  type        = string
}

variable "private_subnet_display_name" {
  description = "Display name for private subnet"
  type        = string
}

variable "public_cidr_block" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "public_subnet_display_name" {
  description = "Display name for public subnet"
  type        = string
}
