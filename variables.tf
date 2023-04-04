variable "tfe_workspace_name" {
  type        = string
  description = "Name of the workspace."
}

variable "tfe_organization_name" {
  type        = string
  description = "Name of the organization."
}

variable "vcs_repo_name" {
  type        = string
  description = "Name of the VCS repo."
}

variable "vcs_repo_branch" {
  type        = string
  description = "The repository branch that Terraform will execute from."

}

variable "tfe_github_oauth_token_id" {
  type        = string
  description = "The VCS Connection (OAuth Connection + Token) to use."
}

variable "environment_vars" {
  type = list(object({
    name      = string
    value     = string
    sensitive = optional(bool, false)
  }))
  default     = []
  description = "Environment variables to be added to the workspace."
}

variable "terraform_vars" {
  type = list(object({
    name      = string
    value     = string
    sensitive = optional(bool, false)
  }))
  default     = []
  description = "Terraform variables to be added to the workspace."
}

variable "terraform_hcl_vars" {
  type = list(object({
    name      = string
    value     = list(string)
    sensitive = optional(bool, false)
  }))
  default     = []
  description = "HCL variables to be added to the workspace."
}

variable "tfe_remote_state_consumer_ids" {
  type        = list(string)
  default     = []
  description = "The list of Terraform Cloud workspaces that can consume the state of this workspace"
}
