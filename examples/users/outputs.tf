output "emails" {
  description = "List of emails of the users"
  value       = "${module.users.emails}"
}

output "ids" {
  description = "The IDs of the users"
  value       = "${module.users.ids}"
}

/*
output "invitation_sent" {
  description = "Invitation status of users. true = outstanding invitation"
  value       = "${module.users.invitation_sent}"
}
*/

output "names" {
  description = "List of Names of the users"
  value       = "${module.users.names}"
}
