terraform {
  backend "s3" {
    bucket = "trade-tariff-terraform-state"
    key    = "api-docs"
    region = "eu-west-2"
  }
}


provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias  = "global"
  region = "us-east-1"
}

data "aws_route53_zone" "selected" {
  name         = "trade-tariff.service.gov.uk."
  private_zone = false
}
