terraform {
  required_version = "~> 0.12.0"
}

resource "google_service_account" "main" {
  project      = var.project_id
  account_id   = "${var.name}-cloudfunction"
  display_name = "Provisioned by Terraform"
}

resource "google_project_iam_member" "main" {
  count   = length(var.roles)
  project = var.project_id
  member  = "serviceAccount:${google_service_account.main.email}"
  role    = element(var.roles, count.index)
}

resource "google_cloudfunctions_function" "main" {
  project               = var.project_id
  region                = var.region
  name                  = var.name
  description           = var.description
  runtime               = var.runtime
  available_memory_mb   = var.available_memory_mb
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  trigger_http          = var.trigger_http
  timeout               = var.timeout
  entry_point           = var.entry_point
  service_account_email = google_service_account.main.email
  environment_variables = var.environment_variables
}
