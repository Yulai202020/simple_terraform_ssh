output "sshkey_fingerprint" {
  value       = digitalocean_ssh_key.default.fingerprint
  description = "sshkey_yulain"
}
output "IP-1" {
  value = digitalocean_droplet.web.ipv4_address
}