if [ "$1" = "dev" ]; then
 rm -f .terraform/terraform.tfstate
 terraform init -backend-config=env-dev/state.tfvars
 if ["$2" = "destroy"]
terraform apply auto-approve -var-file=env-dev/state.tfvars
 else
terraform apply auto-approve -var-file=env-dev/state.tfvars
 fi
 fi


 if [ "$1" = "prod" ]; then
  rm -f .terraform/terraform.tfstate
  terraform init -backend-config=env-prod/state.tfvars
  if ["$2" = "destroy"]
 terraform apply auto-approve -var-file=env-prod/state.tfvars
  else
 terraform apply auto-approve -var-file=env-prod/state.tfvars
  fi
  fi


