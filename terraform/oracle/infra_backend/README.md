## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_objectstorage_bucket.infra_backend_bucket](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/objectstorage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket Name | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment OCID | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Object Storage Namespace Name | `string` | n/a | yes |

## Outputs

No outputs for now.
