module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vinay.hegde@insight.com"
    AccountName               = "infrastructure-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "vinay.hegde@insight.com"
    SSOUserFirstName          = "AFT"
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
  
module "sandbox1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vinay.hegde@insight.com"
    AccountName               = "INFRASTRUCTURE SHARING"
    ManagedOrganizationalUnit = "Workload"
    SSOUserEmail              = "vinay.hegde@insight.com"
    SSOUserFirstName          = "Workload"
    SSOUserLastName           = "Sharing"
  }

  account_tags = {
    "Learn Tutorial" = "non-prod"
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
