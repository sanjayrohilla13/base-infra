module "ecr" {
  for_each          =   toset(["app1-repo", "app2-repo"])
  source            = "../../modules/ecr"
  application_name  = "app1"
  expiry_days       = var.ecr_expiry_days
  name              = each.key
}