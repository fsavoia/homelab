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
  description = "VCN CIDRs list"
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

variable "amd_shape" {
  description = "Shape for AMD instances"
  type        = string
  default     = "VM.Standard.E2.1.Micro"
}

variable "amd_source_image_id" {
  description = "Source image for AMD instances"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "arm_shape" {
  description = "Shape for ARM instances"
  type        = string
  default     = "VM.Standard.A1.Flex"
}

variable "arm_source_image_id" {
  description = "Source image for ARM instances"
  type        = string
}

variable "arm_ocpus" {
  description = "Number of OCPUs for ARM instances"
  type        = number
}

variable "arm_memory_in_gbs" {
  description = "Memory in GBs for ARM instances"
  type        = number
}
