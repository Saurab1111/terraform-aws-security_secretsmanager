variable "name" {
  type        = string
  description = "Name of the AWS Secrets Manager secret"
  default     = "application-secret"
}

variable "description" {
  type        = string
  description = "Description for the secret"
  default     = "Managed secret for application credentials"
}

variable "kms_key_id" {
  type        = string
  description = "KMS key ID or ARN used to encrypt the secret"
  default     = ""
}

variable "recovery_window_in_days" {
  type        = number
  description = "Number of days before permanent deletion of the secret"
  default     = 7
}

variable "secret_string" {
  type        = string
  description = "Plaintext secret value stored in Secrets Manager"
  default     = "change-me"
}

variable "secret_binary" {
  type        = string
  description = "Base64 encoded binary secret value"
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the secret resources"
  default = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
