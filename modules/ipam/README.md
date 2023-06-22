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
| <a name="input_cascade"></a> [cascade](#input\_cascade) | (Optional) Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description for the IPAM | `string` | `null` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | (Required) The name of the Region you want to add to the IPAM | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ipam"></a> [ipam](#output\_ipam) | Object of attributes for the AWS VPC IPAM |

<!-- END TFDOCS -->
