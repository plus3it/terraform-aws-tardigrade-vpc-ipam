<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.40.0 |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ipam_id"></a> [ipam\_id](#input\_ipam\_id) | (Required) The ID of the IPAM for which you're creating this scope. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description for the scope you're creating. | `string` | `"My IPAM Scope"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value mapping of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_scope"></a> [scope](#output\_scope) | Object of attributes for the AWS VPC IPAM Scope |

<!-- END TFDOCS -->
