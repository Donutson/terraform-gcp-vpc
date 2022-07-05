variable "network_name" {
  description = "vpc name"
  type        = string
}


variable "project_name" {
  description = "project name"
  type        = string
}


variable "subnet_name" {
  description = "subnet name"
  type        = string
}


variable "subnet_ip_cidr_range" {
  description = "the subnet ip cidr range"
  type        = string
  default     = "10.2.0.0/16"
}


variable "region" {
  description = "region to provision resources"
  type        = string
  default     = "europe-west1"
}


variable "firewall_ingress_name" {
  description = "the ingress firewall name"
  type        = string
}


variable "firewall_egress_name" {
  description = "the egress firewall name"
  type        = string
}