resource "random_string" "random" {
  length = var.string_length
}

resource "random_pet" "nickname" {
  length = var.string_length
}

