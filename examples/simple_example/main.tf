provider "google" {
  version = "~> 2.0"
}

module "cloud_function" {
  source = "../.."

  project_id            = var.project_id
  region                = var.region
  name                  = var.name
  runtime               = var.runtime
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  trigger_http          = var.trigger_http
  timeout               = var.timeout
  entry_point           = var.entry_point
  environment_variables = var.environment_variables
  roles                 = ["roles/viewer"]
}
