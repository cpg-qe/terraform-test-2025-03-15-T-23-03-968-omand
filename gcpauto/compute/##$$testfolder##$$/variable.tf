variable "gcp_project" {
  description = "The GCP project ID."
  type        = string
}

variable "credentials" { }


variable "gcp_region" {
  description = "The GCP region."
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "The GCP zone."
  type        = string
  default     = "us-central1-b"
}


variable "ssh_user" {
  type        = string
  description = "SSH user for compute instance"
  default     = "cmpdev"
  sensitive   = false
}

variable "host_check" {
  type        = string
  description = "Dont add private key to known_hosts"
  default     = "-o StrictHostKeyChecking=no"
  sensitive   = false
}

variable "ignore_known_hosts" {
  type        = string
  description = "Ignore (many) keys stored in the ssh-agent; use explicitly declared keys"
  default     = "-o IdentitiesOnly=yes"
  sensitive   = false
}

variable "vmname"{
  type = string
  default = "autogcpcomputeinstancea"
}

variable "disk_name"{
  type = string
  default = "compute-disk"
}