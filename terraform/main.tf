module "sandbox-1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "xiaolshe+cttf-sandbox-1@amazon.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "xiaolshe+cttf-sandbox-1@amazon.com"
    SSOUserFirstName          = "Sandbox1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "ABC"            = "Update"
  }

  change_management_parameters = {
    change_requested_by = "Xiaoli Shen"
    change_reason       = "Demo account provision with AFT"
  }

  custom_fields = {
    group = "AWSAccountFactory"
  }

  account_customizations_name = "sandbox-1"
}

# module "sandbox" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "xiaolshe+cttf-sandbox-1@amazon.com"
#     AccountName               = "sandbox-aft"
#     ManagedOrganizationalUnit = "Sandbox"
#     SSOUserEmail              = "xiaolshe+cttf-sandbox-1@amazon.com"
#     SSOUserFirstName          = "Sandbox1"
#     SSOUserLastName           = "AFT"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "Xiaoli Shen"
#     change_reason       = "Demo account provision with AFT"
#   }

#   custom_fields = {
#     group = "AWSAccountFactory"
#   }

#   account_customizations_name = "sandbox-1"
# }
