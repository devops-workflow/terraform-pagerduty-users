
variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "pagerduty_token" {
  type        = "string"
  description = "The API token for PagerDuty. Should be set via an environment variable."
}

variable "users" {
  type        = "list"
  description = "A list of maps containing information about PagerDuty users. Please see the variable declaration for an example of the structure."

  default = [
    {
      name      = "Full name"             # Required
      email     = "user@contoso.com"      # Required
      color     = "Blue"                  # Optional
      role      = "read_only_user"        # Optional, see docs
      job_title = "Chief Needful Officer" # Optional
    },
  ]
}
