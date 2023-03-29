data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "backend-tfstate-prac"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1"
  }
}