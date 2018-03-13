variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "pagerduty_token" {
  description = "The API token for PagerDuty. Should be set via an environment variable."
  type        = "string"
}

variable "users" {
  description = "A list of maps containing information about PagerDuty users. Please see the variable declaration for an example of the structure."
  type        = "list"

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
