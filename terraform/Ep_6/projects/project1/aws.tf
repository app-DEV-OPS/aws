# Create resources in AWS using Modules
# Author: Somnath Das

module "vpc" {
  source = "../../modules/vpc"
  cidr_block = var.project_cidr
}

module "bucket" {
  source = "../../modules/s3"
  bucket_name = var.project_bucket_name
  tags = var.s3_tags
}

output "project_vpc" {
  value = module.hga-lamp-vpc.vpc_id
}

output "project_bucket" {
  value = module.hga-lamp-s3.bucket_id
}
