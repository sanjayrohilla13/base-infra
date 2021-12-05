provider "aws" {
    region = "ap-southeast-2"
}
terraform {
    backend "s3" {
        bucket = "terraform-state-bucket-2021"
        key = "app/config/dev/base-infra/terraform.tfstate"
        region = "ap-southeast-2"
    }
}