locals {
  common_tags = {
    Project = "Automation Project – Assignment 1" 
	Name = "Sweety.Parmar"
	ExpirationDate = "2023-06-30" 
	Environment = "Lab" 
  }
}

variable "resource_group"{
    default = ""
}

variable "location" {
    default = ""
}

variable "admin_username" {
  default = "n01516628"
}

variable "admin_password" {
  default = "Sweety@123"
}

variable "postsql_server_name" {
    default = "postgresql-server-6628"
}

variable "postsql_data_name" {
    default = "database-6628"
}