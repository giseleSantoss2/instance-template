terraform {

  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.63.1"
    }
  }
}

terraform {
  backend "s3" {}
}
