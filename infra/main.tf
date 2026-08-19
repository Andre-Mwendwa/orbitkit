# filename: infra/main.tf
terraform {
  required_providers {
    docker = { source = "kreuzwerker/docker", 
    version = "~> 3.0" }
  }
}
provider "docker" {}

resource "docker_network" "orbitkit" {
  name = var.network_name
}