terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Ou a versão mais recente suportada pelo OpenTofu
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
