module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "test1@radziszewski.net"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "test1@radziszewski.net"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "test2@radziszewski.net"
    AccountName               = "test-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "test2@radziszewski.net"
    SSOUserFirstName          = "TEST"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "TEST"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "test"
}
