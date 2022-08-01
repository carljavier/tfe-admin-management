resource "tfe_agent_pool" "mac" {
  name         = "mac-osx"
  organization = data.tfe_organization.dev.name
}
