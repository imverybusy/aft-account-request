module "req_accnt_dev01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "a01091680906+ctws-aftdev1@gmail.com"
    AccountName  = "accRqTestHanseo"
    ManagedOrganizationalUnit = "ProductionVersion2"
    SSOUserEmail     = "a01091680906@gmail.com"
    SSOUserFirstName = "hanseo"
    SSOUserLastName  = "choi"
  }
}