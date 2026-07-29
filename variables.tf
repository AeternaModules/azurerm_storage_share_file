variable "storage_share_files" {
  description = <<EOT
Map of storage_share_files, attributes below
Required:
    - name
    - storage_share_url
Optional:
    - content_disposition
    - content_encoding
    - content_md5
    - content_type
    - metadata
    - path
    - source
    - source_content
EOT

  type = map(object({
    name                = string
    storage_share_url   = string
    content_disposition = optional(string)
    content_encoding    = optional(string)
    content_md5         = optional(string)
    content_type        = optional(string)
    metadata            = optional(map(string))
    path                = optional(string)
    source              = optional(string)
    source_content      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_share_files : (
        v.content_encoding == null || (length(v.content_encoding) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_share_files : (
        v.content_md5 == null || (length(v.content_md5) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_share_files : (
        v.content_disposition == null || (length(v.content_disposition) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_share_files : (
        v.source == null || (length(v.source) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_share_files : (
        v.source_content == null || (length(v.source_content) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

