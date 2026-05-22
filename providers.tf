# DEFAULT provider (OIDC)
provider "aws" {
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.default.shared_config_file]
}

# KMS alias provider (OIDC)
provider "aws" {
  alias               = "kms"
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.aliases["kms"].shared_config_file]
}