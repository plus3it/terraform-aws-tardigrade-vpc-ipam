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
| <a name="input_ipam_scope_id"></a> [ipam\_scope\_id](#input\_ipam\_scope\_id) | (Required) The ID of the scope in which you would like to create the IPAM pool | `string` | n/a | yes |
| <a name="input_source_ipam_pool_id"></a> [source\_ipam\_pool\_id](#input\_source\_ipam\_pool\_id) | (Optional) The ID of the source IPAM pool | `string` | n/a | yes |
| <a name="input_address_family"></a> [address\_family](#input\_address\_family) | (Required) The IP protocol assigned to this pool | `string` | `"ipv4"` | no |
| <a name="input_allocation_default_netmask_length"></a> [allocation\_default\_netmask\_length](#input\_allocation\_default\_netmask\_length) | (Optional) A default netmask length for allocations added to this pool | `number` | `16` | no |
| <a name="input_allocation_max_netmask_length"></a> [allocation\_max\_netmask\_length](#input\_allocation\_max\_netmask\_length) | (Optional) The maximum netmask length that will be required for CIDR allocations in this pool | `number` | `32` | no |
| <a name="input_allocation_min_netmask_length"></a> [allocation\_min\_netmask\_length](#input\_allocation\_min\_netmask\_length) | (Optional) The minimum netmask length that will be required for CIDR allocations in this pool | `number` | `8` | no |
| <a name="input_allocation_resource_tags"></a> [allocation\_resource\_tags](#input\_allocation\_resource\_tags) | (Optional) Tags that are required for resources that use CIDRs from this IPAM pool | `map(string)` | <pre>{<br>  "Test": "Allocation"<br>}</pre> | no |
| <a name="input_auto_import"></a> [auto\_import](#input\_auto\_import) | (Optional) If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall within the CIDR range in the pool | `bool` | `false` | no |
| <a name="input_aws_service"></a> [aws\_service](#input\_aws\_service) | (Optional) Limits which AWS service the pool can be used in | `string` | `"ec2"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description for the IPAM pool | `string` | `"My IPAM Pool"` | no |
| <a name="input_locale"></a> [locale](#input\_locale) | (Required) The locale in which you would like to create the IPAM pool | `string` | `"us-east-1"` | no |
| <a name="input_public_ip_source"></a> [public\_ip\_source](#input\_public\_ip\_source) | (Optional) The IP address source for pools in the public scope | `string` | `"byoip"` | no |
| <a name="input_publicly_advertisable"></a> [publicly\_advertisable](#input\_publicly\_advertisable) | (Optional) Defines whether or not IPv6 pool space is publicly advertisable over the internet | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource | `map(string)` | <pre>{<br>  "Test": "Main"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool"></a> [pool](#output\_pool) | Object of attributes for the AWS VPC IPAM Pool |

<!-- END TFDOCS -->
