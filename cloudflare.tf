

terraform {
  cloud {
    organization = "cstrube"

    workspaces {
      name = "Cloudflare_strubesolutions_com"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  api_token = "vxKjFVOiWd0A7GGsK31zFBcK2en-bKT60Zzzy8bf"
}

variable "zone_id" {
  default = "bdec062b6554fe052bd4cb0b4a275a87"

}

variable "domain" {
  default = "strubesolutions.com"
}

resource "cloudflare_record" "terraform_managed_resource_96dfcd08e9cfcfb0dda018ba5f04f428" {
  name    = "strubesolutions.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "178.202.25.127"
  zone_id = "bdec062b6554fe052bd4cb0b4a275a87"
}

resource "cloudflare_record" "find" {
  name    = "auth"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "strubesolutions.com"
  zone_id = "bdec062b6554fe052bd4cb0b4a275a87"
}

resource "cloudflare_record" "bitwarden" {
  name    = "bitwarden"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "strubesolutions.com"
  zone_id = "bdec062b6554fe052bd4cb0b4a275a87"
}