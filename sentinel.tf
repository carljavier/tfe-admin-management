data "tfe_slug" "policies" {
  // point to the local directory where the policies are located.
  // Upload the entire policies directory
  // Each sub directory represents a policy sets
  source_path = "./policies"
}

resource "tfe_policy_set" "aws" {
  name          = "aws-default-policy"
  description   = "AWS policy"
  policies_path = "./aws"
  organization  = data.tfe_organization.teamcarljavier.name
  workspace_ids = [tfe_workspace.app2.id]

  slug = data.tfe_slug.policies
}


# resource "tfe_policy_set" "cloud_agnostic" {
#   name          = "cloud-agnostic-policy"
#   description   = "Cloud Agnostic Policies"
#   policies_path = "./cloud-agnostic"
#   organization  = data.tfe_organization.teamcarljavier.name
#   workspace_ids = [tfe_workspace.app2.id]

#   slug = data.tfe_slug.policies
# }