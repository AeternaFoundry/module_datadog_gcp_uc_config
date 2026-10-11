resource "datadog_gcp_uc_config" "gcp_uc_configs" {
  for_each = var.gcp_uc_configs

  billing_account_id  = each.value.billing_account_id
  bucket_name         = each.value.bucket_name
  export_dataset_name = each.value.export_dataset_name
  export_project_name = each.value.export_project_name
  service_account     = each.value.service_account
  export_prefix       = each.value.export_prefix
}

