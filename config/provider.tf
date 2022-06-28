terraform {
  required_version = ">= 0.12"
  required_providers {
    vault = {
      version = "3.0.1"
    }
  }
}

provider "vault" {
  address = "http://13.48.71.194:8200"
  token   = "s.f6j5Xj21GEYpd3rIhvg6gKIR"
}
