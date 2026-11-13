output "event_rules_id" {
  description = "Map of id values across all event_rules, keyed the same as var.event_rules"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.id }
}
output "event_rules_action_json" {
  description = "Map of action_json values across all event_rules, keyed the same as var.event_rules"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.action_json }
}
output "event_rules_advanced_condition_json" {
  description = "Map of advanced_condition_json values across all event_rules, keyed the same as var.event_rules"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.advanced_condition_json }
}
output "event_rules_catch_all" {
  description = "Map of catch_all values across all event_rules, keyed the same as var.event_rules"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.catch_all }
}
output "event_rules_condition_json" {
  description = "Map of condition_json values across all event_rules, keyed the same as var.event_rules"
  value       = { for k, v in pagerduty_event_rule.event_rules : k => v.condition_json }
}

