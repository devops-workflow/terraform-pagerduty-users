module "users" {
  source          = "../../"
  pagerduty_token = "${var.pagerduty_token}"

  users = [
    {
      name        = "Test User 2"
      email       = "user2@example.com"
      color       = "red"
      description = "Test user"
      job_title   = "Developer 2"
      role        = "team_responder"
    },
  ]
}

# Current role options TF: admin, limited_user, team_responder, user, owner, read_only_user (stakeholder)


/*
{
  name      = "Test User 1"
  email     = "user1@example.com"
  color     = "blue"
  description = "Test user"
  job_title = "Developer 1"
  role      = "read_only_user"
},
{
  name      = "Test User 2"
  email     = "user2@example.com"
  color     = "red"
  description = "Test user"
  job_title = "Developer 2"
  role      = "team_responder"
},
{
  name      = "Test User 3"
  email     = "user3@example.com"
},
{
  name      = "Test Admin 1"
  email     = "user2@example.com"
  color     = "green"
  description = "Test user"
  job_title = "First godling"
  role      = "admin"
},
*/

