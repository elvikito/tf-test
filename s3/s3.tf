terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-west-1"   
    profile = "aws-qella_profile"
}

resource "aws_s3_bucket" "example" {
  bucket = "elvisramirez-1234"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.example.id
  key    = "1.txt"
  source = "./files/1.txt"
  etag = filemd5("./files/1.txt")
}