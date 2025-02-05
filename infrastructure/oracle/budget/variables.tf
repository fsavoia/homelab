variable "budget_amount" {
  description = "The amount of the budget"
  type        = number
}

variable "compartment_id" {
  description = "OCID of the compartment"
  type        = string
}

variable "budget_reset_period" {
  description = "The reset period for the budget"
  default     = "MONTHLY"
  type        = string
}

variable "budget_description" {
  default = "Budget for monitoring expenses"
  type    = string
}

variable "budget_display_name" {
  type = string
}

variable "budget_target_type" {
  default = "COMPARTMENT"
  type    = string
}

variable "alert_rule_threshold" {
  type = number
}

variable "alert_rule_threshold_type" {
  default = "ABSOLUTE"
  type    = string
}

variable "alert_rule_type" {
  default = "ACTUAL"
  type    = string
}

variable "alert_rule_description" {
  type = string
}

variable "alert_rule_display_name" {
  type = string
}

variable "alert_rule_message" {
  type = string
}

variable "alert_rule_recipients" {
  type = string
}
