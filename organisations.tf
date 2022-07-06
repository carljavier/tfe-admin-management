resource "tfe_organization" "org" {
  for_each = var.organizations

  name  = each.key
  email = each.value.email
}

data "tfe_organization" "teamcarljavier" {
  name = "carlcorp"

  depends_on = [
    tfe_organization.org
  ]
}


output "tf_org" {
  value = tfe_organization.org

}