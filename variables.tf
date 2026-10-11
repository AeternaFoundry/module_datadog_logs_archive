variable "logs_archives" {
  description = <<EOT
Map of logs_archives, attributes below
Required:
    - name
    - query
Optional:
    - compression_method
    - include_tags
    - lookup_attributes
    - partitioning_attributes
    - rehydration_max_scan_size_in_gb
    - rehydration_tags
    - azure_archive (block):
        - client_id (required)
        - container (required)
        - path (optional)
        - storage_account (required)
        - tenant_id (required)
    - gcs_archive (block):
        - bucket (required)
        - client_email (required)
        - path (optional)
        - project_id (optional)
    - s3_archive (block):
        - access_key_id (optional)
        - account_id (optional)
        - bucket (required)
        - encryption_key (optional)
        - encryption_type (optional)
        - path (optional)
        - role_name (optional)
        - storage_class (optional)
EOT

  type = map(object({
    name                            = string
    query                           = string
    compression_method              = optional(string)
    include_tags                    = optional(bool)
    lookup_attributes               = optional(list(string))
    partitioning_attributes         = optional(list(string))
    rehydration_max_scan_size_in_gb = optional(number)
    rehydration_tags                = optional(list(string))
    azure_archive = optional(object({
      client_id       = string
      container       = string
      path            = optional(string)
      storage_account = string
      tenant_id       = string
    }))
    gcs_archive = optional(object({
      bucket       = string
      client_email = string
      path         = optional(string)
      project_id   = optional(string)
    }))
    s3_archive = optional(object({
      access_key_id   = optional(string)
      account_id      = optional(string)
      bucket          = string
      encryption_key  = optional(string)
      encryption_type = optional(string)
      path            = optional(string)
      role_name       = optional(string)
      storage_class   = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

