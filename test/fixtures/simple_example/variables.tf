variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "region" {
  description = "The GCP region in which the resources will be provisioned."
}

variable "runtime" {
  description = "The runtime in which the function is running"
  type        = string
}

variable "source_archive_bucket" {
  description = "The GCS bucket containing the zip archive which contains the function"
  type        = string
}

variable "source_archive_object" {
  description = "The source archive object (file) in archive bucket"
  type        = string
}

variable "entry_point" {
  description = "Name of the function that will be executed when the Google Cloud Function is triggered"
}
