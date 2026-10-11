variable "gcp_uc_configs" {
  description = <<EOT
Map of gcp_uc_configs, attributes below
Required:
    - billing_account_id
    - bucket_name
    - export_dataset_name
    - export_project_name
    - service_account
Optional:
    - export_prefix
EOT

  type = map(object({
    billing_account_id  = string
    bucket_name         = string
    export_dataset_name = string
    export_project_name = string
    service_account     = string
    export_prefix       = optional(string)
  }))
}

