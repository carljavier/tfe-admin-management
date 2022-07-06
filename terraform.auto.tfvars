organizations = {
  "carlcorp" = {
    email = "carl.javier+tfecarlcorp@hashicorp.com"
  },
  "hashicorp" = {
    email = "carl.javier+tfehashicorp@hashicorp.com"
  },
  "dev" = {
    email = "carl.javier+tfedev@hashicorp.com"
  }
}

tfe-hostname = "tfcarl.is.hashicorpdemo.com"

tfe-teams = {
  "carlcorp-devops" = {
    name         = "devops"
    organization = "carlcorp"
  },
  "carlcorp-dev" = {
    name         = "dev"
    organization = "carlcorp"
  },
}

workspace-app = {
  "app1" = {
    description       = "App1 Does Stuff"
    name              = "app1"
    tag_names         = ["finance", "src:aws"]
    terraform_version = "value"
    working_directory = "value"
  },
  "app2" = {
    description       = "App2 Does Stuff"
    name              = "app2"
    tag_names         = ["engineering", "src:gcp"]
    terraform_version = "value"
    working_directory = "value"
  },
  "app3" = {
    description       = "App3 Does Stuff"
    name              = "app3"
    tag_names         = ["security", "src:azure"]
    terraform_version = "value"
    working_directory = "value"
  },
}



tfe_devs_users = {
  "jim" = {
    email = "jim@example.com"
  },
  "sandy" = {
    email = "sandy@example.com"
  }
}

tfe_devops_users = {
  "wayne" = {
    email = "wayne@example.com"
  },
  "alice" = {
    email = "alice@example.com"
  }
}