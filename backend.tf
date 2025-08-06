terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-statefile"
    key            = "env/dev/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}