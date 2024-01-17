<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) Repository environment. {name}/{environment}. Default is dev. | `string` | `"dev"` | no |
| <a name="input_expiration_after_days"></a> [expiration\_after\_days](#input\_expiration\_after\_days) | (Optional) Delete images older than X days. | `number` | `0` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | (Optional) If true, will delete the repository even if it contains images. Defaults to false. | `bool` | `false` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | (Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE | `string` | `"MUTABLE"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the repository. {name}/{environment}. | `string` | n/a | yes |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | (Required) Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false). | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lifecycle_policy_arn"></a> [lifecycle\_policy\_arn](#output\_lifecycle\_policy\_arn) | n/a |
| <a name="output_repository_arn"></a> [repository\_arn](#output\_repository\_arn) | n/a |
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | n/a |
| <a name="output_repository_uri"></a> [repository\_uri](#output\_repository\_uri) | n/a |
<!-- END_TF_DOCS -->