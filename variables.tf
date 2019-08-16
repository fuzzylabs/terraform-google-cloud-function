variable "project_id" {
  description = "The ID of the project in which to provision resources."
}

variable "region" {
  description = "The GCP region in which the resources will be provisioned."
}

variable "name" {
  description = "The name of the cloud function to create"
}

variable "description" {
  description = "The description of the cloud function"
  default     = "Created by Terraform"
}

variable "runtime" {
  description = "The runtime in which the function is running"
}

variable "available_memory_mb" {
  description = "Available memory (in MB) to the function."
  default     = 128
}

variable "source_archive_bucket" {
  description = "The GCS bucket containing the zip archive which contains the function"
}

variable "source_archive_object" {
  description = "The source archive object (file) in archive bucket"
}

variable "trigger_http" {
  description = "If function is triggered by HTTP, this boolean is set"
  default     = true
}

variable "timeout" {
  description = "Function execution timeout (in seconds)"
  default     = 60
}

variable "entry_point" {
  description = "Name of the function that will be executed when the Google Cloud Function is triggered"
}

variable "environment_variables" {
  description = "A map of key/value environment variable pairs to assign to the function"
  default     = {}
}

variable "roles" {
  description = "A list of roles to apply to the service account"
  default     = []
}

