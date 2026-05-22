module "ec2" {
  source = "./modules/ec2"

  # MUST pass both providers (customer pattern)
  providers = {
    aws     = aws
    aws.kms = aws.kms
  }

  name          = var.name
  instance_type = var.instance_type
}
