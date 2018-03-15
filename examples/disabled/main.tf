module "disabled" {
  source          = "../../"
  enabled         = false
  pagerduty_token = "${var.pagerduty_token}"
  users           = []
}
