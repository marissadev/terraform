# output definitions for post-application

output "circleci_repo_url" {
  description = "The URL of the CircleCI ECR repository"
  value       = aws_ecr_repository.circleci.repository_url
}