<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.32.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ./modules/ecr | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) Repository environment. {name}/{environment}. Default is dev. | `string` | `"dev"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the repository. {name}/{environment}. | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | (Optional) Name of the owner. | `string` | n/a | yes |
| <a name="input_profile"></a> [profile](#input\_profile) | (Required) Name of the AWS profile | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | (Optional) Name of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (Required) Region of AWS account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_uri"></a> [repository\_uri](#output\_repository\_uri) | n/a |
<!-- END_TF_DOCS -->