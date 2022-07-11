resource "tfe_variable_set" "aws" {
  name          = "InfraTeam AWS"
  description   = "Var Set for AWS InfraTeam "
  organization  = tfe_organization.org["carlcorp"].name
}

resource "tfe_workspace_variable_set" "aws" {
  variable_set_id = tfe_variable_set.aws.id
  workspace_id    = tfe_workspace.app.id
}


resource "tfe_variable_set" "TestApps" {
    name          = "All Test Apps"
    description   = "Var Set for ALL App Workspace"
    organization  = tfe_organization.org["carlcorp"].name
}

resource "tfe_workspace_variable_set" "TestApps" {
    for_each = tfe_workspace.app-test
    variable_set_id = tfe_variable_set.TestApps.id
    workspace_id    = tfe_workspace.app-test[each.key].id
}