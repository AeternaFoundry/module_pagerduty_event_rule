resource "pagerduty_event_rule" "event_rules" {
  for_each = var.event_rules

  action_json             = each.value.action_json
  condition_json          = each.value.condition_json
  advanced_condition_json = each.value.advanced_condition_json
}

