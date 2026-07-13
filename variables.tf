variable "storage_share_files" {
  description = <<EOT
Map of storage_share_files, attributes below
Required:
    - name
Optional:
    - content_disposition
    - content_encoding
    - content_md5
    - content_type
    - metadata
    - path
    - source
    - storage_share_id
    - storage_share_url
EOT

  type = map(object({
    name                = string
    content_disposition = optional(string)
    content_encoding    = optional(string)
    content_md5         = optional(string)
    content_type        = optional(string)
    metadata            = optional(map(string))
    path                = optional(string)
    source              = optional(string)
    storage_share_id    = optional(string)
    storage_share_url   = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_share_file's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_share_url
  #   source:    [from storageValidate.StorageShareDataPlaneID] !ok
  # path: storage_share_url
  #   source:    [from storageValidate.StorageShareDataPlaneID] err != nil
  # path: path
  #   source:    [from storageValidate.StorageShareDirectoryName] regexp.MustCompile(`^\.+$`).MatchString(value)
  # path: path
  #   source:    [from storageValidate.StorageShareDirectoryName] !regexp.MustCompile(`^[^"/\:|<>*?]+(/[^"\:|<>*?]+)*$`).MatchString(value)
  # path: content_encoding
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: content_md5
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: content_disposition
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: source
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: metadata
  #   source:    [from validate.MetaDataKeys] isCSharpKeyword
  # path: metadata
  #   source:    [from validate.MetaDataKeys] !regexp.MustCompile(`^([a-z_]{1}[a-z0-9_]{1,})$`).MatchString(k)
}

