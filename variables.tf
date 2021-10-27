variable "organizations" {
  description = "List of Organisations to create in TFE"
  type = map(object({
      name = string
      email = string
  }))
}

variable "tfe-hostname" {
    description = "TFE hostname"
}