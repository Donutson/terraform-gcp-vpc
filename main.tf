resource "google_compute_network" "main" {
  name                    = var.network_name
  auto_create_subnetworks = "false"
}


resource "google_compute_subnetwork" "main" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_cidr_range
  region        = var.region
  network       = google_compute_network.main.name
  
  depends_on = [
    google_compute_network.main,
  ]
}


resource "google_compute_firewall" "ingress" {
  name          = var.firewall_ingress_name
  network       = google_compute_network.main.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "3000", "22"]
  }

  allow {
    protocol = "udp"
    ports    = ["80", "443", "3000","22"]
  }

  depends_on = [
    google_compute_subnetwork.main
  ]
}


resource "google_compute_firewall" "egress" {
  name          = var.firewall_egress_name
  network       = google_compute_network.main.name
  direction     = "EGRESS"

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "3000", "22"]
  }

  allow {
    protocol = "udp"
    ports    = ["80", "443", "3000", "22"]
  }

  depends_on = [
    google_compute_subnetwork.main,
  ]

}