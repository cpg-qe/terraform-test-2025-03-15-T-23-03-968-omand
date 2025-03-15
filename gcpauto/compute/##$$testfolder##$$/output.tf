output "instance_connection_string" {
  description = "Command to connect to the compute instance"
  value       = "ssh -i ${local_sensitive_file.private_key.filename} ${var.ssh_user}@${google_compute_instance.website_server.network_interface.0.access_config.0.nat_ip} ${var.host_check} ${var.ignore_known_hosts}"
  sensitive   = false
}