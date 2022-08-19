module "tfrun-functions" {
  source = "./tfrun-functions.sentinel"
}

policy "restrict-aws-instances-type-and-tag" {
  source = "./restrict-aws-instances-type-and-tag.sentinel"
  enforcement_level = "soft-mandatory"
}