# This file has some scaffolding to make sure that names are unique and that
# a region and zone are selected when you try to create your Terraform resources.

locals {
  name_suffix = "tf-trial"
}

provider "google" {
  region = "us-west1"
  zone   = "us-west1-c"
}
