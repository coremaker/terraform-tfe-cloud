# Terraform TFE Cloud

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.environment_variables](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.terraform_hcl_variables](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.terraform_variables](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.main](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment_vars"></a> [environment\_vars](#input\_environment\_vars) | Environment variables to be added to the workspace. | <pre>list(object({<br>    name      = string<br>    value     = string<br>    sensitive = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_terraform_hcl_vars"></a> [terraform\_hcl\_vars](#input\_terraform\_hcl\_vars) | HCL variables to be added to the workspace. | <pre>list(object({<br>    name      = string<br>    value     = list(string)<br>    sensitive = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_terraform_vars"></a> [terraform\_vars](#input\_terraform\_vars) | Terraform variables to be added to the workspace. | <pre>list(object({<br>    name      = string<br>    value     = string<br>    sensitive = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_tfe_github_oauth_token_id"></a> [tfe\_github\_oauth\_token\_id](#input\_tfe\_github\_oauth\_token\_id) | The VCS Connection (OAuth Connection + Token) to use. | `string` | n/a | yes |
| <a name="input_tfe_organization_name"></a> [tfe\_organization\_name](#input\_tfe\_organization\_name) | Name of the organization. | `string` | n/a | yes |
| <a name="input_tfe_remote_state_consumer_ids"></a> [tfe\_remote\_state\_consumer\_ids](#input\_tfe\_remote\_state\_consumer\_ids) | The list of Terraform Cloud workspaces that can consume the state of this workspace | `list(string)` | `[]` | no |
| <a name="input_tfe_workspace_name"></a> [tfe\_workspace\_name](#input\_tfe\_workspace\_name) | Name of the workspace. | `string` | n/a | yes |
| <a name="input_vcs_repo_branch"></a> [vcs\_repo\_branch](#input\_vcs\_repo\_branch) | The repository branch that Terraform will execute from. | `string` | n/a | yes |
| <a name="input_vcs_repo_name"></a> [vcs\_repo\_name](#input\_vcs\_repo\_name) | Name of the VCS repo. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_workspace_id"></a> [tfe\_workspace\_id](#output\_tfe\_workspace\_id) | The workspace ID. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
