terraform {
  required_version = "~> 0.14"
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>3.54.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}