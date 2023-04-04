locals {
  terraform_vars = {
    for variable in var.terraform_vars :
    variable.name => variable
  }

  terraform_hcl_vars = {
    for variable in var.terraform_hcl_vars :
    variable.name => variable
  }

  environment_vars = {
    for variable in var.environment_vars :
    variable.name => variable
  }
}

resource "tfe_variable" "environment_variables" {
  for_each = local.environment_vars

  key          = each.value["name"]
  value        = each.value["value"]
  category     = "env"
  sensitive    = each.value["sensitive"]
  workspace_id = tfe_workspace.main.id
}

resource "tfe_variable" "terraform_variables" {
  for_each = local.terraform_vars

  key          = each.value["name"]
  value        = each.value["value"]
  category     = "terraform"
  hcl          = false
  sensitive    = each.value["sensitive"]
  workspace_id = tfe_workspace.main.id
}

resource "tfe_variable" "terraform_hcl_variables" {
  for_each = local.terraform_hcl_vars

  key          = each.value["name"]
  value        = jsonencode(each.value["value"])
  category     = "terraform"
  hcl          = true
  sensitive    = each.value["sensitive"]
  workspace_id = tfe_workspace.main.id
}