output "resource_group_name" {
  description = "The created Azure resource group name."
  value       = module.resource_group.name
}

output "resource_group_id" {
  description = "The created Azure resource group ID."
  value       = module.resource_group.id
}

output "resource_group_location" {
  description = "The created Azure resource group location."
  value       = module.resource_group.location
}

output "resource_group_tags" {
  description = "The tags applied to the Azure resource group."
  value       = module.resource_group.tags
}
