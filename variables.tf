variable "aws_region" {
  default = "us-east-1"
}

variable "name" {
  default = "my-ec2"
}

variable "instance_type" {
  default = "t3.micro"
}

# required for Terraform Cloud dynamic creds
variable "tfc_aws_dynamic_credentials" {
  type = object({
    default = object({
      shared_config_file = string
    })
    aliases = map(object({
      shared_config_file = string
    }))
  })
}