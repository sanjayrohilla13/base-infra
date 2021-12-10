provider "aws" {
  region  = "ap-southeast-2"
}
module "ecr" {
  for_each          =   toset(["repo1", "repo2"])
  source            = "../../modules/ecr"
  application_name  = var.application_name
  ecr_expiry_days   = var.ecr_expiry_days
  name              = each.key
}