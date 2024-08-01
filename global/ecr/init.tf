terraform {
  required_version = "~> 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.59.0"
    }
  }

  backend "s3" {
    bucket         = "duneapp.terraform"
    key            = "global/ecr/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = arn:aws:kms:us-east-1:730335195561:key/5adca3af-7613-4481-b48f-cadf1b79c637
    dynamodb_table = "terraform-state-locking"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      environment      = "global"
      terraform_config = "global/ecr"
    }
  }
}