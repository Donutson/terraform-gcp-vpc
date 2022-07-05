module "vpc" {
  source                = "../"
  subnet_name           = var.subnet_name
  project_name          =  var.project_name
  network_name          = var.network_name
  firewall_egress_name  = var.firewall_egress_name
  firewall_ingress_name = var.firewall_ingress_name
}