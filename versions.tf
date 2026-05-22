terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.24.0"

      # Module requires the caller to pass aws.kms
      configuration_aliases = [aws.kms]
    }
  }
}
