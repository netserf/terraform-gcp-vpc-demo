locals {
  name_suffix = "tf-trial"
}

provider "google" {
  region = "us-central1"
  zone   = "us-central1-b"
}
