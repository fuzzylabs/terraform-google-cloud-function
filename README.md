# terraform-google-cloud-function

This is an opinionated module following the best practice principle of [least privilege](https://cloud.google.com/blog/products/application-development/least-privilege-for-cloud-functions-using-cloud-iam) permissions. By default a cloud function will use the default service account that has a very broad 'Editor role' attached to it.

This module creates the following resources:

- A HTTP Triggered Cloud Function
- A Service Account specific to the Cloud Function
- Bind a list of provided IAM roles to the service account.

## Usage

Basic usage of this module is as follows:

```hcl
module "cloud_function" {
  source  = "github.com/fuzzylabs/terraform-google-cloud-function?ref=0.1.0"

  project = "<PROJECT ID>"
  name    = "foo"
  runtime = "go111"
  source_archive_bucket = "<MY BUCKET>"
  source_archive_object = "/foo/bar.zip"
  entry_point = "mainFunction"
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| available\_memory\_mb | Available memory (in MB) to the function. | string | `"128"` | no |
| description | The description of the cloud function | string | `"Created by Terraform"` | no |
| entry\_point | Name of the function that will be executed when the Google Cloud Function is triggered | string | n/a | yes |
| environment\_variables | A map of key/value environment variable pairs to assign to the function | map | `<map>` | no |
| name | The name of the cloud function to create | string | n/a | yes |
| project\_id | The ID of the project in which to provision resources. | string | n/a | yes |
| region | The GCP region in which the resources will be provisioned. | string | n/a | yes |
| roles | A list of roles to apply to the service account | list | `<list>` | no |
| runtime | The runtime in which the function is running | string | n/a | yes |
| source\_archive\_bucket | The GCS bucket containing the zip archive which contains the function | string | n/a | yes |
| source\_archive\_object | The source archive object (file) in archive bucket | string | n/a | yes |
| timeout | Function execution timeout (in seconds) | string | `"60"` | no |
| trigger\_http | If function is triggered by HTTP, this boolean is set | string | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| service\_account\_email |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.12
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v2.0

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

This module is based on the official [Google Terraform Module Template](https://github.com/terraform-google-modules/terraform-google-module-template)
