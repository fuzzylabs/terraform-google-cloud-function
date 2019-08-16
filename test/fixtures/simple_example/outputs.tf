output "service_account_email" {
  description = "The email address of the service account."
  value       = module.example.service_account_email
}

output "cloud_function_name" {
  description = "The name of the cloud function"
  value       = random_pet.main.id
}

output "project_id" {
  description = "The ID of the project in which resources are provisioned."
  value       = var.project_id
}

output "region" {
  description = "The region in which resources are provisioned."
  value       = var.region
}
