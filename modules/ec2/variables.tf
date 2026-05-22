variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "name" {
  type        = string
  default     = "simple-ec2"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

# Required for HCP Terraform AWS dynamic credentials (multi-config)
variable "tfc_aws_dynamic_credentials" {
  description = "Object containing AWS dynamic credentials configuration"
  type = object({
    default = object({
      shared_config_file = string
    })
    aliases = map(object({
      shared_config_file = string
    }))
  })
}
``