# filename: infra/variables.tf
variable "network_name" {
  description = "Name of the local Docker network standing in for VPC"
  default     = "orbitkit-net"
}

