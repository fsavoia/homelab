resource "oci_objectstorage_bucket" "infra_backend_bucket" {
  namespace      = var.namespace
  compartment_id = var.compartment_id
  name           = var.bucket_name
}