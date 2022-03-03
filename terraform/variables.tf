locals {
  name_suffix = "tf-trial"
  tf_bucket = "TODO"
  tf_folder = "terraform-state"
}

provider "google" {
  region = "us-central1"
  zone   = "us-central1-b"
}
