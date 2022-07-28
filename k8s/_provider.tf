terraform {
  required_version = ">= 0.14.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}

variable "digitalocean_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
}
