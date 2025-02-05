resource "oci_budget_budget" "kubernetes_budget" {
  amount         = var.budget_amount
  compartment_id = var.compartment_id
  reset_period   = var.budget_reset_period

  description  = var.budget_description
  display_name = var.budget_display_name
  target_type  = var.budget_target_type
  targets      = [var.compartment_id]
}

resource "oci_budget_alert_rule" "kubernetes_alert_rule" {
  budget_id      = oci_budget_budget.kubernetes_budget.id
  threshold      = var.alert_rule_threshold
  threshold_type = var.alert_rule_threshold_type
  type           = var.alert_rule_type

  description  = var.alert_rule_description
  display_name = var.alert_rule_display_name
  message      = var.alert_rule_message
  recipients   = var.alert_rule_recipients
}
