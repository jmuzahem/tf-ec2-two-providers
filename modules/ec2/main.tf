module "ec2" {
  source = "./modules/ec2"

  # Important: module expects aws.kms, so pass it
  providers = {
    aws     = aws
    aws.kms = aws.kms
  }

  name          = var.name
  instance_type = var.instance_type
}