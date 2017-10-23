# This is why outputs from the module go
output "user_ids" {
  description = "The IDs of the users created by this module"
  value       = "${pagerduty_user.user.*.id}"
}
