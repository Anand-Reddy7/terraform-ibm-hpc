terraform {
  required_version = ">= 1.3, < 1.7"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}
