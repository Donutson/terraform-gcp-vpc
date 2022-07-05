output "network_name" {
  description = "network name"
  value       = google_compute_network.main.name
}


output "subnetwork_name" {
  description = "subnetwork name"
  value = google_compute_subnetwork.main.name
}


output "firewall_ingress" {
  description = "vpc compute firewall ingress resource"
  value       = google_compute_firewall.ingress
}


output "firewall_egress" {
  description = "vpc compute firewall egress resource"
  value       = google_compute_firewall.egress
}