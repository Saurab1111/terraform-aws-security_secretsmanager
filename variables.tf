variable "name" {
  type        = string
  description = "Name of the AWS Secrets Manager secret"
  default     = "application-secret"
}

variable "description" {
  type        = string
  description = "Description of the secret"
  default     = "Managed by Terraform"
}

variable "recovery_window_in_days" {
  type        = number
  description = "Number of days that Secrets Manager waits before deleting the secret"
  default     = 7
}

variable "kms_key_id" {
  type        = string
  description = "KMS key ID or ARN used to encrypt the secret"
  default     = ""
}

variable "secret_string" {
  type        = string
  description = "Plaintext secret value stored in the current version"
  default     = "change-me"
}

variable "secret_binary" {
  type        = string
  description = "Base64 encoded binary secret value"
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the secret"
  default = {
    managed_by = "terraform"
  }
}
