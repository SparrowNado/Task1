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

data "aws_key_pair" "sugar_key" { //change //changed //name of key pair is key card //3nd tier key pair name is  sugar_key
  key_name = "sugar_key" //change //changed
}

variable "private_subnets" {
  default = {
    "t3_tier_dev_t3"  = 245 //can be any number as long as walang conflict  //changed //must be around 0 to 32 //new name of instance
  }
}