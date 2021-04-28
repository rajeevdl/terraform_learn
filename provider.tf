provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "trainingepsilonbatch4"
    key    = "rajeev/tfstate"
    region = "us-east-1"
  }
}