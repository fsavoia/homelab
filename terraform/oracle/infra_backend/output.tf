output "bucket_name" {
  description = "Bucket Name"
  value       = oci_objectstorage_bucket.infra_backend_bucket.name
}

output "bucket_id" {
  description = "Bucket OCID"
  value       = oci_objectstorage_bucket.infra_backend_bucket.id
}