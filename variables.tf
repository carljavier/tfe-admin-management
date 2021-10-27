variable "organizations" {
  description = "Map of Organisations to create in TFE"
  type = map(object({
      name = string
      email = string
  }))
}

variable "tfe-hostname" {
    description = "TFE hostname"
}

variable "tfe-teams" {
    description = "Map teams to be created in TFE"
    type = map(object({
        name = string
        organization = string
    }))
  
}