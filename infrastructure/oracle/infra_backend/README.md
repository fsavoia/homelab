## Requirements

| Name                                                   | Version  |
| ------------------------------------------------------ | -------- |
| <a name="requirement_oci"></a> [oci](#requirement_oci) | >= 4.0.0 |

## Providers

| Name                                             | Version  |
| ------------------------------------------------ | -------- |
| <a name="provider_oci"></a> [oci](#provider_oci) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                           | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [oci_objectstorage_bucket.infra_backend_bucket](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/objectstorage_bucket) | resource |

## Inputs

| Name                                                                        | Description                   | Type     | Default | Required |
| --------------------------------------------------------------------------- | ----------------------------- | -------- | ------- | :------: |
| <a name="input_bucket_name"></a> [bucket_name](#input_bucket_name)          | Bucket Name                   | `string` | n/a     |   yes    |
| <a name="input_compartment_id"></a> [compartment_id](#input_compartment_id) | Compartment OCID              | `string` | n/a     |   yes    |
| <a name="input_namespace"></a> [namespace](#input_namespace)                | Object Storage Namespace Name | `string` | n/a     |   yes    |

## Outputs

No outputs.
