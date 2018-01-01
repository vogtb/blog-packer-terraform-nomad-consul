provider "digitalocean" {
  token = "API_TOKEN_OMITTED"
}

data "digitalocean_image" "base-image" {
  name = "base.2017.12.23.8"
}

variable "region" { default = "nyc3" }

resource "digitalocean_droplet" "prime" {
  count  = 1
  image  = "${data.digitalocean_image.base-image.image}"
  name   = "${format("%s%02d%s", "prime", count.index + 1, var.region)}"
  region = "${var.region}"
  size   = "512mb"
}

resource "digitalocean_droplet" "worker" {
  count  = 4
  image  = "${data.digitalocean_image.base-image.image}"
  name   = "${format("%s%02d%s", "frontserve", count.index + 1, var.region)}"
  region = "${var.region}"
  size   = "512mb"
}
