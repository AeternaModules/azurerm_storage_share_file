output "storage_share_files_id" {
  description = "Map of id values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_share_files_content_disposition" {
  description = "Map of content_disposition values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_disposition if v.content_disposition != null && length(v.content_disposition) > 0 }
}
output "storage_share_files_content_encoding" {
  description = "Map of content_encoding values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_encoding if v.content_encoding != null && length(v.content_encoding) > 0 }
}
output "storage_share_files_content_length" {
  description = "Map of content_length values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_length if v.content_length != null }
}
output "storage_share_files_content_md5" {
  description = "Map of content_md5 values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_md5 if v.content_md5 != null && length(v.content_md5) > 0 }
}
output "storage_share_files_content_type" {
  description = "Map of content_type values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "storage_share_files_metadata" {
  description = "Map of metadata values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "storage_share_files_name" {
  description = "Map of name values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_share_files_path" {
  description = "Map of path values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.path if v.path != null && length(v.path) > 0 }
}
output "storage_share_files_source" {
  description = "Map of source values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.source if v.source != null && length(v.source) > 0 }
}
output "storage_share_files_source_content" {
  description = "Map of source_content values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.source_content if v.source_content != null && length(v.source_content) > 0 }
}
output "storage_share_files_storage_share_url" {
  description = "Map of storage_share_url values across all storage_share_files, keyed the same as var.storage_share_files"
  value       = { for k, v in azurerm_storage_share_file.storage_share_files : k => v.storage_share_url if v.storage_share_url != null && length(v.storage_share_url) > 0 }
}

