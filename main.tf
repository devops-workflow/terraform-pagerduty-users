# Here is where the main parts of the module go, including resource definitions
resource "pagerduty_user" "user" {
  count     = "${length(var.users)}"
  name      = "${lookup(var.users[count.index], "name")}"
  email     = "${lookup(var.users[count.index], "email")}"
  color     = "${lookup(var.users[count.index], "color", "")}"
  role      = "${lookup(var.users[count.index], "role", "")}"
  job_title = "${lookup(var.users[count.index], "job_title", "")}"
}