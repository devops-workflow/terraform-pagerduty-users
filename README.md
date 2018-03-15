[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-pagerduty-users.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-pagerduty-users)

# terraform-pagerduty-users

## Description

This TF module allows the declaration of all PagerDuty users in an account. It does _not_ support teams and thus can be used with any PagerDuty account.

### Usage
```hcl
module "users" {
  source          = "devops-workflow/users/pagerduty"
  version         = "0.2.0"
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
```

## Variables

### pagerduty_token

**Description:** The PagerDuty API token. This is generally intended to be defined by an environment variable (i.e. `TF_VAR_pagerduty_token`)

**Acceptable Values:** An API key

**Default Value:** `N/A`

### users

**Description:** A list of maps representing users. See usage or examples. name and email are required

**Acceptable Values:** A list of maps.

**Default Value:** `N/A`
