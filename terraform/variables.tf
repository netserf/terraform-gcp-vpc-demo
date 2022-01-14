locals {
  name_suffix = "tf-trial"
}

provider "google" {
  region = "us-west1"
  zone   = "us-west1-c"
}
