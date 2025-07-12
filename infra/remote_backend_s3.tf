terraform {
  backend "s3" {
    bucket = "dev-proj-1-remote-state-bucket-12345679"
    key    = "devops-project-1/terraform.tfstate"
    region = "ap-south-1"
  }
}