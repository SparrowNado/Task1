provider "aws" {
  region = "ap-northeast-1" //change to your region //changed
}

data "aws_availability_zones" "available" {
}

data "aws_region" "current" {}

# Define VPC
data "aws_vpc" "default" {
  default = true
}

data "aws_key_pair" "key_card" { //change //changed //name of key pair is key card
  key_name = "key_card" //change //changed
}

variable "private_subnets" {
  default = {
    "t3_tier_dev"  = 250 //can be any number as long as walang conflict  //changed //must be around 0 to 32
  }
}