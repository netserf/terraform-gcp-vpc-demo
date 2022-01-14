locals {
  name_suffix = "tf-trial"
}

provider "google" {
  region = "northamerica-northeast1"
  zone   = "northamerica-northeast1-c"
}
