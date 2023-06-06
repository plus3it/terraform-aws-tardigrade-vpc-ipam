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
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description for the IPAM Resource Discovery. | `string` | `"My IPAM Resource Discovery"` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | (Required) The name of the Region you want to add to the IPAM. | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource. | `map(string)` | <pre>{<br>  "Test": "Main"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_discovery"></a> [resource\_discovery](#output\_resource\_discovery) | Object of attributes for the AWS VPC IPAM Resource Discovery |

<!-- END TFDOCS -->
