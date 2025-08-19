terraform {
  backend "s3" {
    bucket         = "my-app-1755617396"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
    use_lockfile   = true
  }
}