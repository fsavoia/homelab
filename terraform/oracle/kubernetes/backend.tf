# (Terraform version >= 1.6.4)
terraform {
  backend "s3" {
    key                         = "k8s.tfstate"
    region                      = "eu-amsterdam-1"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    use_path_style              = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }
}
