resource "tfe_team" "test" {
  for_each = var.tfe-teams

    name = each.value.name
    organization = each.value.organization
}
