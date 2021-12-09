module "ecr" {
  for_each          =   toset(["repo1", "repo2"])
  source            = "../../modules/ecr"
  application_name  = "app1"
  expiry_days       = var.expiry_days
  name              = each.key
}