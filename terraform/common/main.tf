#Get Current AWS Account Info
data "aws_caller_identity" "current" {}

module "ecr" {
    source = "../storage"
    ecr-name ="${var.ecr-name}"
}


