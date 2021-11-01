resource "tfe_workspace" "app" {
  name         = "app-magic"
  organization = tfe_organization.org["carlcorp"].name
  tag_names    = ["test", "app"]
}