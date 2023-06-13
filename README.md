<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.40.0 |

## Providers

No providers.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ipam"></a> [ipam](#input\_ipam) | Object of inputs for IPAM resources | <pre>object({<br>    description = string<br>    region_name = string<br>    tags        = optional(map(string))<br>    cascade     = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_pool"></a> [pool](#input\_pool) | Object of inputs for Pool resources | <pre>object({<br>    address_family                    = optional(string)<br>    allocation_default_netmask_length = optional(number)<br>    allocation_max_netmask_length     = optional(number)<br>    allocation_min_netmask_length     = optional(number)<br>    allocation_resource_tags          = optional(map(string))<br>    auto_import                       = optional(bool)<br>    aws_service                       = optional(bool)<br>    description                       = string<br>    ipam_scope_id                     = string<br>    locale                            = optional(string)<br>    publicly_advertisable             = optional(bool)<br>    public_ip_source                  = optional(string)<br>    source_ipam_pool_id               = optional(string)<br>    tags                              = optional(map(string))<br>  })</pre> | `{}` | no |
| <a name="input_pool_cidr"></a> [pool\_cidr](#input\_pool\_cidr) | Object of inputs for Pool CIDR resources | <pre>object({<br>    cidr                                 = string<br>    cidr_authorization_context_message   = optional(string)<br>    cidr_authorization_context_signature = optional(string)<br>    ipam_pool_id                         = string<br>    netmask_length                       = optional(number)<br>  })</pre> | `{}` | no |
| <a name="input_pool_cidr_allocation"></a> [pool\_cidr\_allocation](#input\_pool\_cidr\_allocation) | Object of inputs for Pool CIDR Allocation resources | <pre>object({<br>    cidr             = string<br>    description      = optional(string)<br>    disallowed_cidrs = optional(list(string))<br>    ipam_pool_id     = string<br>    netmask_length   = optional(number)<br>  })</pre> | `{}` | no |
| <a name="input_preview_next_cidr"></a> [preview\_next\_cidr](#input\_preview\_next\_cidr) | Object of inputs for Preview Next CIDR resources | <pre>object({<br>    disallowed_cidrs = list(string)<br>    ipam_pool_id     = string<br>    netmask_length   = number<br>  })</pre> | `{}` | no |
| <a name="input_resource_discovery"></a> [resource\_discovery](#input\_resource\_discovery) | Object of inputs for Resource Discovery resources | <pre>object({<br>    description = string<br>    region_name = string<br>    tags        = optional(map(string))<br>  })</pre> | `{}` | no |
| <a name="input_resource_discovery_association"></a> [resource\_discovery\_association](#input\_resource\_discovery\_association) | Object of inputs for Resource Discovery Association resources | <pre>object({<br>    ipam_id                    = string<br>    ipam_resource_discovery_id = string<br>    tags                       = optional(map(string))<br>  })</pre> | `{}` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | Object of inputs for Scope resources | <pre>object({<br>    ipam_id     = string<br>    description = string<br>    tags        = optional(map(string))<br>  })</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ipam"></a> [ipam](#output\_ipam) | Object of all AWS VPC IPAM |

<!-- END TFDOCS -->
