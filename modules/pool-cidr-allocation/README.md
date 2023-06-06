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
| <a name="input_ipam_pool_id"></a> [ipam\_pool\_id](#input\_ipam\_pool\_id) | (Required) The ID of the pool to which you want to assign a CIDR | `string` | n/a | yes |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | (Required) The CIDR you want to assign to the pool | `string` | `"172.2.0.0/24"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description for the allocation | `string` | `"My IPAM Pool CIDR Allocation"` | no |
| <a name="input_disallowed_cidrs"></a> [disallowed\_cidrs](#input\_disallowed\_cidrs) | (Optional) Exclude a particular CIDR range from being returned by the pool | `list(string)` | `[]` | no |
| <a name="input_netmask_length"></a> [netmask\_length](#input\_netmask\_length) | (Optional) The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: 0-128 | `number` | `24` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_cidr_allocation"></a> [pool\_cidr\_allocation](#output\_pool\_cidr\_allocation) | Object of attributes for the AWS VPC IPAM Pool CIDR Allocation |

<!-- END TFDOCS -->
