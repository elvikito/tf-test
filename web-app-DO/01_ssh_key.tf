# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "eramirez" {
  name       = "eramirez"
  public_key = "${file("eramirez.pub")}"
}
