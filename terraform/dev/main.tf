//../terraform/common/main.tf

resource "aws_ecr_repository" "app-ecr" {
  name                 = "test-repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}