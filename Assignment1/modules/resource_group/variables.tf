locals {
  common_tags = {
    Project = "Automation Project – Assignment 1" 
	Name = "Sweety.Parmar"
	ExpirationDate = "2023-06-30" 
	Environment = "Lab" 
  }
}

variable "resource_group" {
  default = ""
}

variable "location" {
  default = ""
}