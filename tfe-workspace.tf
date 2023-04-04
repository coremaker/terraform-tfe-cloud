resource "tfe_workspace" "main" {
  name         = var.tfe_workspace_name
  organization = var.tfe_organization_name

  file_triggers_enabled = false

  vcs_repo {
    identifier     = var.vcs_repo_name
    branch         = var.vcs_repo_branch
    oauth_token_id = var.tfe_github_oauth_token_id
  }

  remote_state_consumer_ids = var.tfe_remote_state_consumer_ids
}
