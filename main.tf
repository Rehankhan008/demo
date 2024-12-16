terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "username" {
  default = "rehan"
}

output "printname" {
  value = "hello, ${var.username}"
}
