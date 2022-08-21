module "tfrun-functions" {
  source = "./tfrun-functions.sentinel"
}

## Waiting for TFE provider issue if the following will be allowed. 
## Operators would prefer only define modules once and be re-used by multiple policy sets
# module "tfrun-functions" {
#   source = "../common-functions/tfrun-functions.sentinel"
# }

policy "deploy-weekdays-only" {
  source = "./deploy-weekdays-only.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "limit-proposed-monthly-cost" {
  source = "./limit-proposed-monthly-cost.sentinel"
  enforcement_level = "hard-mandatory"
}