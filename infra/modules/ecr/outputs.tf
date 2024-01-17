output "repository_name" {
  value = aws_ecr_repository.this.name
}

output "repository_arn" {
  value = aws_ecr_repository.this.arn
}

output "repository_uri" {
  value = aws_ecr_repository.this.repository_url
}

output "lifecycle_policy_arn" {
  value = try(aws_ecr_lifecycle_policy.this[0].id)
}
