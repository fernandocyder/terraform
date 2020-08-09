provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = var.awskey
  secret_key = var.awssecret
}
