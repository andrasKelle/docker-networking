provider "aws" {
  region  = var.region
  profile = var.profile
}

module "ecr" {
  source = "./modules/ecr"

  name                  = var.name
  environment           = var.environment
  force_delete          = true
  image_tag_mutability  = "IMMUTABLE"
  scan_on_push          = true
  expiration_after_days = 7
  additional_tags = {
    Project = var.project
    Owner   = var.owner
  }
}