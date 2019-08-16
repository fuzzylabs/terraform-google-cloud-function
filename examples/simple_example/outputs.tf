output "service_account_email" {
  description = "The email address of the service account."
  value       = module.cloud_function.service_account_email
}
