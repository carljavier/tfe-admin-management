resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = data.tfe_organization.dev.name
  tag_names    = ["test", "app"]
}

resource "tfe_workspace" "ado" {
  name         = "azure-devops-private-infra"
  organization = data.tfe_organization.dev.name
  tag_names    = ["test", "app"]
}