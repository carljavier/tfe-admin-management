resource "tfe_workspace" "app" {
  name         = "app-magic"
  organization = tfe_organization.org["carlcorp"].name
  tag_names    = ["test", "app"]
}


resource "tfe_workspace" "app-dev" {

  for_each = var.workspace-app

  name         = format("%s-dev", each.value.name)
  organization = tfe_organization.org["carlcorp"].name
  tag_names    = concat(["dev"], each.value.tag_names)

}

resource "tfe_workspace" "app-test" {

  for_each = var.workspace-app

  name         = format("%s-test", each.value.name)
  organization = tfe_organization.org["carlcorp"].name
  tag_names    = concat(["test"], each.value.tag_names)

}


resource "tfe_workspace" "app-prod" {

  for_each = var.workspace-app

  name         = format("%s-prod", each.value.name)
  organization = tfe_organization.org["carlcorp"].name
  tag_names    = concat(["prod"], each.value.tag_names)

}