# Simple Example

This example illustrates how to use the `cloud-function` module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| entry\_point | Name of the function that will be executed when the Google Cloud Function is triggered | string | n/a | yes |
| environment\_variables | A map of key/value environment variable pairs to assign to the function | map | `<map>` | no |
| iam\_roles | A list of roles to apply to the service account | list | `<list>` | no |
| name | The name of the cloud function to create | string | n/a | yes |
| project\_id | The project to deploy to | string | n/a | yes |
| region | The GCP region in which the resources will be provisioned. | string | n/a | yes |
| runtime | The runtime in which the function is running | string | n/a | yes |
| source\_archive\_bucket | The GCS bucket containing the zip archive which contains the function | string | n/a | yes |
| source\_archive\_object | The source archive object (file) in archive bucket | string | n/a | yes |
| timeout | Function execution timeout (in seconds) | string | `"60"` | no |
| trigger\_http | If function is triggered by HTTP, this boolean is set | string | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| service\_account\_email | The email address of the service account. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

To provision this example, run the following from within this directory:
- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure
