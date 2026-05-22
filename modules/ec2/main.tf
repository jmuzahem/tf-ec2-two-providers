# Default provider (uses TFC dynamic creds)
provider "aws" {
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.default.shared_config_file]
}

# Aliased provider (exists like customer; not used by EC2 module)
provider "aws" {
  alias               = "kms"
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.aliases["kms"].shared_config_file]
}

module "ec2" {
  source = "./modules/ec2"

  # Pass default provider; also pass aws.kms to match customer pattern
  providers = {
    aws     = aws
    aws.kms = aws.kms
  }

  name          = var.name
  instance_type = var.instance_type
}
