# Creamos un dominio nuevo

resource "digitalocean_domain" "eramirez" {
  name = "eramireziriarte.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.eramirez.name}"
  type   = "A"
  name   = "dev"
  ttl    = "30"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

