resource "digitalocean_droplet" "web" {
  image     = "ubuntu-18-04-x64"
  name      = "web-1"
  region    = "nyc1"
  size      = "s-1vcpu-512mb-10gb"
  ssh_keys  = ["${digitalocean_ssh_key.eramirez.fingerprint}"]
}
