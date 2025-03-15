resource "google_compute_firewall" "webserver_ssh" {
  name    = "webserver-firewall-${random_integer.firewall_suffix.result}"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["webserver-instance"]
  source_ranges = ["10.138.0.0/24"]
}

resource "random_integer" "firewall_suffix" {
  min = 10000
  max = 99999
}