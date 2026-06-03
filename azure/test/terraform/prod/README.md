# iac_env

This repository provisions an Azure resource group with Terraform by consuming the shared module in [`SandeepN1/Test_Terraform_Modules`](https://github.com/SandeepN1/Test_Terraform_Modules).

## What was added

- A Terraform root module in this repository
- A GitHub Actions workflow at `.github/workflows/terraform-azure.yml`
- Minimal documentation for required secrets and Terraform inputs

## Required GitHub secret

Create this repository secret before running the workflow:

- `AZURE_CREDENTIALS`: Azure service principal credentials in the standard `azure/login` JSON format

Example structure:

```json
{
  "clientId": "<azure-client-id>",
  "clientSecret": "<azure-client-secret>",
  "subscriptionId": "<azure-subscription-id>",
  "tenantId": "<azure-tenant-id>"
}
```

## Workflow behavior

The workflow:

- runs on manual dispatch
- runs on pushes to `main` or `master` when Terraform or workflow files change
- logs in to Azure with `AZURE_CREDENTIALS`
- runs `terraform fmt -check`
- runs `terraform init`
- runs `terraform validate`
- runs `terraform plan`
- runs `terraform apply -auto-approve`

## Terraform inputs

The root module uses the resource group module from:

`git::https://github.com/SandeepN1/Test_Terraform_Modules.git//modules/resource-group`

Default input values are defined in `variables.tf` so the pipeline can run without extra workflow inputs.

If you want to override them for local use, copy `terraform.tfvars.example` to `terraform.tfvars` and update the values.

## Local usage

```bash
terraform init
terraform validate
terraform plan
```