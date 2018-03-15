output "emails" {
  description = "List of emails of the users"
  value       = "${module.disabled.emails}"
}

output "ids" {
  description = "The IDs of the users"
  value       = "${module.disabled.ids}"
}

/*
output "invitation_sent" {
  description = "Invitation status of users. true = outstanding invitation"
  value       = "${module.disabled.invitation_sent}"
}
*/

output "names" {
  description = "List of Names of the users"
  value       = "${module.disabled.names}"
}
