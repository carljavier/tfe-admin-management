module "tfrun-functions" {
  source = "./tfrun-functions.sentinel"
}

policy "deploy-weekdays-only" {
  source = "./deploy-weekdays-only.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "limit-proposed-monthly-cost" {
  source = "./limit-proposed-monthly-cost.sentinel"
  enforcement_level = "hard-mandatory"
}