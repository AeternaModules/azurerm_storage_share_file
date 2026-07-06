output "storage_share_files" {
  description = "All storage_share_file resources"
  value       = azurerm_storage_share_file.storage_share_files
}
output "storage_share_files_content_disposition" {
  description = "List of content_disposition values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.content_disposition]
}
output "storage_share_files_content_encoding" {
  description = "List of content_encoding values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.content_encoding]
}
output "storage_share_files_content_length" {
  description = "List of content_length values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.content_length]
}
output "storage_share_files_content_md5" {
  description = "List of content_md5 values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.content_md5]
}
output "storage_share_files_content_type" {
  description = "List of content_type values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.content_type]
}
output "storage_share_files_metadata" {
  description = "List of metadata values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.metadata]
}
output "storage_share_files_name" {
  description = "List of name values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.name]
}
output "storage_share_files_path" {
  description = "List of path values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.path]
}
output "storage_share_files_source" {
  description = "List of source values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.source]
}
output "storage_share_files_storage_share_id" {
  description = "List of storage_share_id values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.storage_share_id]
}
output "storage_share_files_storage_share_url" {
  description = "List of storage_share_url values across all storage_share_files"
  value       = [for k, v in azurerm_storage_share_file.storage_share_files : v.storage_share_url]
}

