
# https://www.terraform.io/docs/providers/pagerduty/r/user.html

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.1"
  value   = "${var.enabled}"
}

resource "pagerduty_user" "this" {
  count     = "${module.enabled.value ? length(var.users) : 0}"
  name      = "${lookup(var.users[count.index], "name")}"
  email     = "${lookup(var.users[count.index], "email")}"
  color     = "${lookup(var.users[count.index], "color", "")}"
  role      = "${lookup(var.users[count.index], "role", "")}"
  job_title = "${lookup(var.users[count.index], "job_title", "")}"
  #team     =
  #description =
}
