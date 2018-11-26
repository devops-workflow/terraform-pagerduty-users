# https://www.terraform.io/docs/providers/pagerduty/r/user.html
# https://www.terraform.io/docs/providers/pagerduty/r/user_contact_method.html

# TODO:
#   add contact methods

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.2"
  value   = "${var.enabled}"
}

data "null_data_source" "this" {
  count = "${module.enabled.value ? length(var.users) : 0}"

  inputs {
    email = "${lookup(var.users[count.index], "email")}"
    name  = "${lookup(var.users[count.index], "name")}"
  }
}

resource "pagerduty_user" "this" {
  count       = "${module.enabled.value ? length(var.users) : 0}"
  color       = "${lookup(var.users[count.index], "color", "")}"
  description = "${lookup(var.users[count.index], "description", "Managed by Terraform")}"
  email       = "${lookup(var.users[count.index], "email")}"
  job_title   = "${lookup(var.users[count.index], "job_title", "")}"
  name        = "${lookup(var.users[count.index], "name")}"
  role        = "${lookup(var.users[count.index], "role", "user")}"

  #teams     =
}
