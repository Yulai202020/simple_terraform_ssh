resource "digitalocean_ssh_key" "default" {
  name       = "ssh_key_yulain"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "digitalocean_droplet" "web" {
  image = "ubuntu-22-04-x64"
  name  = "web"

  region = "nyc1"
  size   = "s-1vcpu-1gb"


  user_data = file("init/init.sh")

  ssh_keys = [
    digitalocean_ssh_key.default.id
  ]
}