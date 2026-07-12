output "storage_share_files_id" {
  description = "Map of id values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.id }
}
output "storage_share_files_content_disposition" {
  description = "Map of content_disposition values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_disposition }
}
output "storage_share_files_content_encoding" {
  description = "Map of content_encoding values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_encoding }
}
output "storage_share_files_content_length" {
  description = "Map of content_length values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_length }
}
output "storage_share_files_content_md5" {
  description = "Map of content_md5 values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_md5 }
}
output "storage_share_files_content_type" {
  description = "Map of content_type values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_type }
}
output "storage_share_files_metadata" {
  description = "Map of metadata values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.metadata }
}
output "storage_share_files_name" {
  description = "Map of name values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.name }
}
output "storage_share_files_path" {
  description = "Map of path values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.path }
}
output "storage_share_files_source" {
  description = "Map of source values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.source }
}
output "storage_share_files_storage_share_id" {
  description = "Map of storage_share_id values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.storage_share_id }
}
output "storage_share_files_storage_share_url" {
  description = "Map of storage_share_url values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.storage_share_url }
}

