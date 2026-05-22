provider "aws" {
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.default.shared_config_file]

  default_tags {
    tags = {
      entidad            = "aV"
      prestador          = "avcAw"
      ambiente           = "pR"
      aut_origin         = "Terraform"
      centroDeCosto      = "22700"
      aplicacion         = "demo"
      capaGestion        = "ro"
      info_estadoInterno = "proyecto"
      info_estadoExterno = "proyecto"
    }
  }
}

# Alias provider required by the module contract (aws.kms)
provider "aws" {
  alias               = "kms"
  region              = var.aws_region
  shared_config_files = [var.tfc_aws_dynamic_credentials.aliases["kms"].shared_config_file]
}