organizations = {
  "carlcorp" = {
    email = "carl.javier@hashicorp.com"
    name = "carlcorp"
  }
}

tfe-hostname = "tfcarl.is.hashicorpdemo.com"

tfe-teams = {
  "carlcorp-devops" = {
    name = "devops"
    organization = "carlcorp"
  },
  "carlcorp-dev" = {
    name = "dev"
    organization = "carlcorp"
  },
}

workspace-app = {
  "app1" = {
    description = "App1 Does Stuff"
    name = "app1"
    tag_names = ["finance","src:aws"]
    terraform_version = "value"
    working_directory = "value"
  },
  "app2" = {
    description = "App2 Does Stuff"
    name = "app2"
    tag_names = ["engineering","src:gcp"]
    terraform_version = "value"
    working_directory = "value"
  },
  "app3" = {
    description = "App3 Does Stuff"
    name = "app3"
    tag_names = ["security","src:azure"]
    terraform_version = "value"
    working_directory = "value"
  },
}


