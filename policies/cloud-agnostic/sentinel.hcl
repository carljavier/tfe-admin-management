module "tfrun-functions" {
  source = "../common-functions/tfrun-functions.sentinel"
}

policy "deploy-weekdays-only" {
  source = "./deploy-weekdays-only.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "limit-proposed-monthly-cost" {
  source = "./limit-proposed-monthly-cost.sentinel"
  enforcement_level = "hard-mandatory"
}