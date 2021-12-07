resource "aws_ecr_repository" "ecr" {
  name                 = "${var.application_name}/${var.ecr_name}"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

//resource "aws_ecr_lifecycle_policy" "policy" {
//    repository = aws_ecr_repository.ecr.name
//    policy = <<EOF
//    {
//        "rules": [
//            "rulePriority": 1,
//            "description": "Expire images older than ${var.expiry_days} days",
//                "selection": {
//                "tagStatus": "any",
//                "countType": "sinceImagePushed",
//                "countUnit": "days",
//                "countNumber": ${var.expiry_days}
//            },
//            "action": {
//                "type": "expire"
//            }
//        }
//    ]
//}
//EOF
//}