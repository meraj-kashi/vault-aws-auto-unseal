terraform {
  required_version = ">= 0.12"
  required_providers {
    vault = {
      version = "3.0.1"
    }
  }
}

provider "vault" {
  address = "http://13.51.178.135:8200/"
}
