provider "random" {
  version = "~> 2.0"
}

resource "random_pet" "main" {
  length = 1
}

module "example" {
  source = "../../../examples/simple_example"

  project_id            = var.project_id
  region                = var.region
  name                  = random_pet.main.id
  runtime               = var.runtime
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  entry_point           = var.entry_point
}
