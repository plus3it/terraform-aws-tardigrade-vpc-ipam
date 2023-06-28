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
| <a name="input_ipam_pool_id"></a> [ipam\_pool\_id](#input\_ipam\_pool\_id) | (Required) The ID of the pool to which you want to assign a CIDR. | `string` | n/a | yes |
| <a name="input_disallowed_cidrs"></a> [disallowed\_cidrs](#input\_disallowed\_cidrs) | (Optional) Exclude a particular CIDR range from being returned by the pool. | `list(string)` | `[]` | no |
| <a name="input_netmask_length"></a> [netmask\_length](#input\_netmask\_length) | (Optional) The netmask length of the CIDR you would like to preview from the IPAM pool. | `number` | `28` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_preview_next_cidr"></a> [preview\_next\_cidr](#output\_preview\_next\_cidr) | Object of attributes for the AWS VPC IPAM Preview Next CIDR |

<!-- END TFDOCS -->
