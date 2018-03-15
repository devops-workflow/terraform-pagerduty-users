variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "pagerduty_token" {
  description = "The API token for PagerDuty. Should be set via an environment variable."
  type        = "string"
}

variable "users" {
  description = "A list of maps containing information about PagerDuty users. Please see the README or examples for the structure."
  type        = "list"
}
