# Terraform sandbox for Coop Norge SA


```bash
# the the latest devtools
docker compose build
docker compose pull

# Check your credentials
docker compose run --rm gcloud  gcloud auth list

# re-initialize TF (do this when you get complaints about versions/modules)
docker compose run --rm terraform-devtools terraform-reinit

# fix TF validation errors
docker compose run --rm terraform-devtools validate
# validate TF code
docker compose run --rm terraform-devtools validate-fix
# apply TF
docker compose run --rm terraform-devtools terraform apply
```

## Template Instructions

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Fix `project_id`.
3. Fix `rg_name`.

