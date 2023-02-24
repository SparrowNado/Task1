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

data "aws_key_pair" "honey_key" { //change //changed //name of key pair is key card //2nd tier key pair name is  honey_key
  key_name = "honey_key" //change //changed
}

variable "private_subnets" {
  default = {
    "t3_tier_dev_t2"  = 255 //can be any number as long as walang conflict  //changed //must be around 0 to 32 //new name of instance
  }
}