terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-statefile"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}