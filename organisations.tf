resource "tfe_organization" "org" {
    for_each = var.organizations

    name = each.value.name
    email = each.value.email
}


output "tf_org" {
    value = tfe_organization.org
  
}