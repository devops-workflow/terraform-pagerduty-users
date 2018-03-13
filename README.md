[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-pagerduty-users.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-pagerduty-users)

# terraform-pagerduty-users

## Description

This TF module allows the declaration of all PagerDuty users in an account. It does _not_ support teams and thus can be used with any PagerDuty account.

## Variables

### pagerduty_token

**Description:** The PagerDuty API token. This is generally intended to be defined by an environment variable (i.e. `TF_VAR_pagerduty_token`)

**Acceptable Values:** An API key

**Default Value:** `N/A`

### users

**Description:** A list of maps representing users. The format of the maps is contained below.

**Acceptable Values:** A list of maps.

**Default Value:**

```hcl
[
  {
    name      = "Full name"             # Required
    email     = "user@contoso.com"      # Required
    color     = "Blue"                  # Optional
    role      = "read_only_user"        # Optional, see docs
    job_title = "Chief Needful Officer" # Optional
  },
]
```
