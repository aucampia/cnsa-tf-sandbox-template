# Terraform sandbox for Coop Norge SA


```bash
# the the latest devtools
docker compose build
docker compose pull

# Check your gcloud credentials
docker compose run --rm gcloud gcloud auth list

# re-initialize TF (do this when you get complaints about versions/modules)
docker compose run --rm terraform-devtools terraform-reinit

# fix TF validation errors
docker compose run --rm terraform-devtools validate-fix
# validate TF code
docker compose run --rm terraform-devtools validate

# apply TF
docker compose run --rm terraform-devtools terraform apply
```

## More info

For more info see:
- https://playbook.internal.coop/guidelines/cloud_platforms/sandboxes.html
- https://playbook.internal.coop/platforms/cloud_platform/GCP/guide_google_create_sandbox.html
- https://playbook.internal.coop/platforms/cloud_platform/azure/guide_azure_create_sandbox.html
- https://playbook.internal.coop/platforms/cloud_platform/dev_build_deploy/terraform/guide_terraform_connect_to_sandbox.html

## Template Instructions

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Fix `project_id`.
3. Fix `rg_name`.

