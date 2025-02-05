## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 6.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_budget_alert_rule.kubernetes_alert_rule](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_alert_rule) | resource |
| [oci_budget_budget.kubernetes_budget](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_budget) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_rule_description"></a> [alert\_rule\_description](#input\_alert\_rule\_description) | n/a | `string` | n/a | yes |
| <a name="input_alert_rule_display_name"></a> [alert\_rule\_display\_name](#input\_alert\_rule\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_alert_rule_message"></a> [alert\_rule\_message](#input\_alert\_rule\_message) | n/a | `string` | n/a | yes |
| <a name="input_alert_rule_recipients"></a> [alert\_rule\_recipients](#input\_alert\_rule\_recipients) | n/a | `string` | n/a | yes |
| <a name="input_alert_rule_threshold"></a> [alert\_rule\_threshold](#input\_alert\_rule\_threshold) | n/a | `number` | n/a | yes |
| <a name="input_alert_rule_threshold_type"></a> [alert\_rule\_threshold\_type](#input\_alert\_rule\_threshold\_type) | n/a | `string` | `"ABSOLUTE"` | no |
| <a name="input_alert_rule_type"></a> [alert\_rule\_type](#input\_alert\_rule\_type) | n/a | `string` | `"ACTUAL"` | no |
| <a name="input_budget_amount"></a> [budget\_amount](#input\_budget\_amount) | The amount of the budget | `number` | n/a | yes |
| <a name="input_budget_description"></a> [budget\_description](#input\_budget\_description) | n/a | `string` | `"Budget for monitoring expenses"` | no |
| <a name="input_budget_display_name"></a> [budget\_display\_name](#input\_budget\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_budget_reset_period"></a> [budget\_reset\_period](#input\_budget\_reset\_period) | The reset period for the budget | `string` | `"MONTHLY"` | no |
| <a name="input_budget_target_type"></a> [budget\_target\_type](#input\_budget\_target\_type) | n/a | `string` | `"COMPARTMENT"` | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | OCID of the compartment | `string` | n/a | yes |

## Outputs

No outputs for now.
