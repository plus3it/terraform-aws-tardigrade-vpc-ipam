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
| [aws_vpc_ipam_pool_cidrs.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc_ipam_pool_cidrs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_authorization_context_message"></a> [cidr\_authorization\_context\_message](#input\_cidr\_authorization\_context\_message) | (Optional) The plain-text authorization message for the prefix and account | `string` | n/a | yes |
| <a name="input_cidr_authorization_context_signature"></a> [cidr\_authorization\_context\_signature](#input\_cidr\_authorization\_context\_signature) | (Optional) The signed authorization message for the prefix and account | `string` | n/a | yes |
| <a name="input_ipam_pool_id"></a> [ipam\_pool\_id](#input\_ipam\_pool\_id) | (Required) The ID of the pool to which you want to assign a CIDR | `string` | n/a | yes |
| <a name="input_address_family"></a> [address\_family](#input\_address\_family) | The address family for the managed prefix list. | `string` | `"IPv4"` | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | (Required) The CIDR you want to assign to the pool | `string` | `false` | no |
| <a name="input_cidr_filter_pattern"></a> [cidr\_filter\_pattern](#input\_cidr\_filter\_pattern) | The CIDR pattern to filter the IPAM pool CIDRs. | `string` | `"10.*"` | no |
| <a name="input_netmask_length"></a> [netmask\_length](#input\_netmask\_length) | (Optional) If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length | `number` | `16` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_cidr"></a> [pool\_cidr](#output\_pool\_cidr) | Object of attributes for the AWS VPC IPAM Pool CIDR |

<!-- END TFDOCS -->
