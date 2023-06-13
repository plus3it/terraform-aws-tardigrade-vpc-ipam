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
| <a name="input_ipam_id"></a> [ipam\_id](#input\_ipam\_id) | (Required) The ID of the IPAM to associate. | `string` | n/a | yes |
| <a name="input_ipam_resource_discovery_id"></a> [ipam\_resource\_discovery\_id](#input\_ipam\_resource\_discovery\_id) | (Required) The ID of the Resource Discovery to associate. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to add to the IPAM resource discovery association resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_discovery_association"></a> [resource\_discovery\_association](#output\_resource\_discovery\_association) | Object of attributes for the AWS VPC IPAM Resource Discovery Association |

<!-- END TFDOCS -->
