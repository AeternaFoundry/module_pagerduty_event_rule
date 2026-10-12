variable "event_rules" {
  description = <<EOT
Map of event_rules, attributes below
Required:
    - action_json
    - condition_json
Optional:
    - advanced_condition_json
EOT

  type = map(object({
    action_json             = string
    condition_json          = string
    advanced_condition_json = optional(string)
  }))
}

