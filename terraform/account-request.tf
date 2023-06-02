module "req_accnt_dev01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "woojun+ctws-aftdev1@amazon.com"
    AccountName  = "aftdev1"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "woojun@amazon.com"
    SSOUserFirstName = "Jonas"
    SSOUserLastName  = "Woo"
  }

  account_tags = {
    "ABC:Owner"       = "woojun@amazon.com"
    "ABC:Environment" = "Dev"
    "ABC:Project"     = "CTWS-AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jonas Woo"
    change_reason       = "Customized dev account vending with AFT"
  }

  custom_fields = {
    custom_param1 = "dev1"
  }

  account_customizations_name = "DEV2-BUDGET-2"
}