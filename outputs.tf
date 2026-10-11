output "logs_archives_id" {
  description = "Map of id values across all logs_archives, keyed the same as var.logs_archives except keys with no id are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_archives_azure_archive" {
  description = "Map of azure_archive values across all logs_archives, keyed the same as var.logs_archives except keys with no azure_archive are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => one(v.azure_archive) if v.azure_archive != null && length(v.azure_archive) > 0 }
}
output "logs_archives_compression_method" {
  description = "Map of compression_method values across all logs_archives, keyed the same as var.logs_archives except keys with no compression_method are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.compression_method if v.compression_method != null && length(v.compression_method) > 0 }
}
output "logs_archives_gcs_archive" {
  description = "Map of gcs_archive values across all logs_archives, keyed the same as var.logs_archives except keys with no gcs_archive are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => one(v.gcs_archive) if v.gcs_archive != null && length(v.gcs_archive) > 0 }
}
output "logs_archives_include_tags" {
  description = "Map of include_tags values across all logs_archives, keyed the same as var.logs_archives except keys with no include_tags are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.include_tags if v.include_tags != null }
}
output "logs_archives_lookup_attributes" {
  description = "Map of lookup_attributes values across all logs_archives, keyed the same as var.logs_archives except keys with no lookup_attributes are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.lookup_attributes if v.lookup_attributes != null && length(v.lookup_attributes) > 0 }
}
output "logs_archives_name" {
  description = "Map of name values across all logs_archives, keyed the same as var.logs_archives except keys with no name are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logs_archives_partitioning_attributes" {
  description = "Map of partitioning_attributes values across all logs_archives, keyed the same as var.logs_archives except keys with no partitioning_attributes are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.partitioning_attributes if v.partitioning_attributes != null && length(v.partitioning_attributes) > 0 }
}
output "logs_archives_query" {
  description = "Map of query values across all logs_archives, keyed the same as var.logs_archives except keys with no query are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.query if v.query != null && length(v.query) > 0 }
}
output "logs_archives_rehydration_max_scan_size_in_gb" {
  description = "Map of rehydration_max_scan_size_in_gb values across all logs_archives, keyed the same as var.logs_archives except keys with no rehydration_max_scan_size_in_gb are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.rehydration_max_scan_size_in_gb if v.rehydration_max_scan_size_in_gb != null }
}
output "logs_archives_rehydration_tags" {
  description = "Map of rehydration_tags values across all logs_archives, keyed the same as var.logs_archives except keys with no rehydration_tags are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => v.rehydration_tags if v.rehydration_tags != null && length(v.rehydration_tags) > 0 }
}
output "logs_archives_s3_archive" {
  description = "Map of s3_archive values across all logs_archives, keyed the same as var.logs_archives except keys with no s3_archive are omitted"
  value       = { for k, v in datadog_logs_archive.logs_archives : k => one(v.s3_archive) if v.s3_archive != null && length(v.s3_archive) > 0 }
}

