resource "datadog_logs_archive" "logs_archives" {
  for_each = var.logs_archives

  name                            = each.value.name
  query                           = each.value.query
  compression_method              = each.value.compression_method
  include_tags                    = each.value.include_tags
  lookup_attributes               = each.value.lookup_attributes
  partitioning_attributes         = each.value.partitioning_attributes
  rehydration_max_scan_size_in_gb = each.value.rehydration_max_scan_size_in_gb
  rehydration_tags                = each.value.rehydration_tags

  dynamic "azure_archive" {
    for_each = each.value.azure_archive != null ? [each.value.azure_archive] : []
    content {
      client_id       = azure_archive.value.client_id
      container       = azure_archive.value.container
      path            = azure_archive.value.path
      storage_account = azure_archive.value.storage_account
      tenant_id       = azure_archive.value.tenant_id
    }
  }

  dynamic "gcs_archive" {
    for_each = each.value.gcs_archive != null ? [each.value.gcs_archive] : []
    content {
      bucket       = gcs_archive.value.bucket
      client_email = gcs_archive.value.client_email
      path         = gcs_archive.value.path
      project_id   = gcs_archive.value.project_id
    }
  }

  dynamic "s3_archive" {
    for_each = each.value.s3_archive != null ? [each.value.s3_archive] : []
    content {
      access_key_id   = s3_archive.value.access_key_id
      account_id      = s3_archive.value.account_id
      bucket          = s3_archive.value.bucket
      encryption_key  = s3_archive.value.encryption_key
      encryption_type = s3_archive.value.encryption_type
      path            = s3_archive.value.path
      role_name       = s3_archive.value.role_name
      storage_class   = s3_archive.value.storage_class
    }
  }
}

