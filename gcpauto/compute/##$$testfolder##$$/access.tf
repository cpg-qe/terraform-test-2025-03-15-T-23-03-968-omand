resource "tls_private_key" "webserver_access" {
  algorithm = "ED25519"
}

resource "local_file" "public_key" {
  filename        = "ssshkeyforgoogle.pub"
  content         = trimspace(tls_private_key.webserver_access.public_key_openssh)
}

resource "local_sensitive_file" "private_key" {
  filename = "ssshkeyforgoogle"

  content         = tls_private_key.webserver_access.private_key_openssh

}