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

variable "linux_network_interface_id" {
    default = ""
}

variable "linux_network_interface_name" {
    default = ""
}

variable "linux_pip_id" {
    default = ""
}

variable "linux_name" {
    default = ""
}

variable "loadbalancer-pubip" {
    default = "loadbalancer-pubip-6628"
}

variable "loadbalancer" {
    type = map(string) 
    default = {
        name    = "loadbalancer-6628"
        frontend_ip_configuration = "pubip-6628"
    }
}

variable "backend_address_pool" {
    default = "backendaddresspool-6628"
}

variable "loadbalancer_pool_association" {
    default = "loadbalancer-pool-association-6628"
}

variable "loadbalancer_rule" {
    type = map(string) 
    default = {
        name = "loadbalancer-rule-6628"
        protocol = "Tcp"
        frontend_port = 6628
        backend_port = 6628
        frontend_ip_configuration_name = "PublicIPAddress"
    }
}

variable "loadbalancer_probe" {
    type = map(string)
    default = {
        name                = "loadbalancer-probe-6628"
        protocol            = "Tcp"
        port                = 80
        interval_in_seconds = 5
        number_of_probes    = 2
    }
}