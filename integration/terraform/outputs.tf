

# Generated by: tyk-ci/wf-gen
# Generated on: Monday 07 February 2022 06:14:39 AM UTC

# Generation commands:
# ./pr.zsh -repos tyk -base exp/el7-builds -branch exp/el7-builds -base exp/el7-builds -title Sync from templates -p
# m4 -E -DxREPO=tyk


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk" {
  value = data.terraform_remote_state.integration.outputs.tyk
  description = "ECR creds for tyk repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
