# terraform-gcp-vpc-demo

Demo build for a Google Cloud VPC with subnets using Terraform.

This example borrows from the HashiCorp Terraform registry docs found [here](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork). Modifications have been made to simplify the example for demos.

## Build Environment
These instructions assume you already have Google Cloud access and you're working in the Cloud Shell. From here clone the repo and follow the build steps below.
```
$ git clone https://github.com/netserf/terraform-gcp-vpc-demo.git
```

## Build Steps

```
$ cd terraform
$ export GOOGLE_CLOUD_PROJECT=[project-id]
```

Pull the providers:
```
$ terraform init
```

Apply the updates:
```
$ terraform apply
```

## Clean Up
```
$ terraform destroy
```