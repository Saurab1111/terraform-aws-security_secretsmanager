resource "aws_secretsmanager_secret" "this" {
  name                    = var.name
  description             = var.description
  kms_key_id              = var.kms_key_id != "" ? var.kms_key_id : null
  recovery_window_in_days = var.recovery_window_in_days

  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id = aws_secretsmanager_secret.this.id

  secret_string = var.secret_string != "" ? var.secret_string : null
  secret_binary = var.secret_binary != "" ? var.secret_binary : null
}
