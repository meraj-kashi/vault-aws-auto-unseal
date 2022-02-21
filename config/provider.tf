terraform {
  required_version = ">= 0.12"
  required_providers {
    vault = {
      version = "3.0.1"
    }
  }
}

provider "vault" {
  address = "http://13.51.55.252:8200"
  token   = "s.8hBusHH0OmfoXT52wG9QT1x7"
}
