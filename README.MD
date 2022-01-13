# terraform-gcp-vpc-demo

Demo build for a Google Cloud VPC with subnets using Terraform.

This example borrows from the HashiCorp Terraform registry docs found [here](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork).  Some modifications have been made to simplify the example for pedagogical purposes.

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


