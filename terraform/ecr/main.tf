resource "aws_ecr_repository" "app-ecr" {
  name                 = var.ecr-name
  image_tag_mutability = var.ecr-mutablity
  image_scanning_configuration {
    scan_on_push = true
  }
}