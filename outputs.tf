output "emails" {
  description = "List of emails of the users"
  value       = "${compact(concat(data.null_data_source.this.*.outputs.email, list("")))}"
}

output "ids" {
  description = "The IDs of the users"
  value       = "${compact(concat(pagerduty_user.this.*.id, list("")))}"
}

/* Does not exist - TODO: submit bug report
output "invitation_sent" {
  description = "Invitation status of users. true = outstanding invitation"
  value       = "${compact(concat(pagerduty_user.this.*.invitation_sent, list("")))}"
}
*/

output "names" {
  description = "List of Names of the users"
  value       = "${compact(concat(data.null_data_source.this.*.outputs.name, list("")))}"
}

# Other attributes
#   avatar_url, time_zone, html_url

