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

data "aws_key_pair" "t3_tier_dev" { //change //changed
  key_name = "key_card" //change //changed
}

variable "private_subnets" {
  default = {
    "t3_tier_dev"  = 357 //can be any number as long as walang conflict  //changed
  }
}