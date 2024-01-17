resource "aws_ecr_repository" "this" {
  name                 = "${var.name}/${var.environment}"
  image_tag_mutability = var.image_tag_mutability
  force_delete         = var.force_delete
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = merge(
    var.additional_tags,
    {
      ManagedBy   = "Terraform"
      Environment = "${var.environment}"
    }
  )
}

resource "aws_ecr_lifecycle_policy" "this" {
  count      = var.expiration_after_days > 0 ? 1 : 0
  repository = aws_ecr_repository.this.name
  policy     = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than ${var.expiration_after_days} days",
            "selection": {
                "tagStatus": "any",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": ${var.expiration_after_days}
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}