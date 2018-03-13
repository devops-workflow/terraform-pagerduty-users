output "ids" {
  description = "The IDs of the users"
  value       = "${compact(concat(pagerduty_user.this.*.id, list("")))}"
}

output "invitation_sent" {
  description = "Invitation status of users. true = outstanding invitation"
  value       = "${compact(concat(pagerduty_user.this.*.invitation_sent, list("")))}"
}

# Other attributes
#   avatar_url, time_zone, html_url

