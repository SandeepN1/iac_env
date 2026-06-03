module "resource_group" {
  source = "git::https://github.com/SandeepN1/Test_Terraform_Modules.git//modules/resource-group?ref=main"

  project = var.project
  service = var.service
  environment = var.environment
  region = var.region
  sequence = var.sequence
  location = var.location
  business_unit = var.business_unit
  owner = var.owner
  technical_contact = var.technical_contact
  op_co = var.op_co
  description = var.description
}
