# variable definitions

variable "circleci_repo_name" {
  description = "The name of the CircleCI ECR repository"
  type        = string
  default     = "circleci_repo" # repository name
}