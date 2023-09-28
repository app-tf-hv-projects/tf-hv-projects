terraform {
  backend "s3" {
    bucket         = "hga-lamp-s3"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    
  }
}
