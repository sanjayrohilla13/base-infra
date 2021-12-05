output "ecr-repo-output" {
    value = "The repository name is :${aws_ecr_repository.ecr-name.repository_url}"
}