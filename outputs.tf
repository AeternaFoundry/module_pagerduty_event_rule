output "event_rules_id" {
  description = "Map of id values across all event_rules, keyed the same as var.event_rules except keys with no id are omitted"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_rules_action_json" {
  description = "Map of action_json values across all event_rules, keyed the same as var.event_rules except keys with no action_json are omitted"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.action_json if v.action_json != null && length(v.action_json) > 0 }
}
output "event_rules_advanced_condition_json" {
  description = "Map of advanced_condition_json values across all event_rules, keyed the same as var.event_rules except keys with no advanced_condition_json are omitted"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.advanced_condition_json if v.advanced_condition_json != null && length(v.advanced_condition_json) > 0 }
}
output "event_rules_catch_all" {
  description = "Map of catch_all values across all event_rules, keyed the same as var.event_rules except keys with no catch_all are omitted"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.catch_all if v.catch_all != null }
}
output "event_rules_condition_json" {
  description = "Map of condition_json values across all event_rules, keyed the same as var.event_rules except keys with no condition_json are omitted"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.condition_json if v.condition_json != null && length(v.condition_json) > 0 }
}

