module "tfrun-functions" {
  source = "./tfrun-functions.sentinel"
}

## Waiting for TFE provider issue if the following will be allowed. 
## Operators would prefer only define modules once and be re-used by multiple policy sets
# module "tfrun-functions" {
#   source = "../common-functions/tfrun-functions.sentinel"
# }

policy "restrict-aws-instances-type-and-tag" {
  source = "./restrict-aws-instances-type-and-tag.sentinel"
  enforcement_level = "soft-mandatory"
}