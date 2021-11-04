variable "organizations" {
  description = "Map of Organisations to create in TFE"
  type = map(object({
    name  = string
    email = string
  }))
}

variable "tfe-hostname" {
  description = "TFE hostname"
}

variable "tfe-teams" {
  description = "Map teams to be created in TFE"
  type = map(object({
    name         = string
    organization = string
  }))

}

variable "workspace-app" {
  description = "TFE Workspace for App"
  type = map(object({
    name              = string
    description       = string
    tag_names         = list(string)
    terraform_version = string
    working_directory = string
  }))

}

variable "tfe_devs_users" {
  description = "TFE Dev Users"
  type = map(object({
    email = string
  }))
}

variable "tfe_devops_users" {
  description = "TFE DevOps Users"
  type = map(object({
    email = string
  }))
}