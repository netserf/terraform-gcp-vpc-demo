# terraform-gcp-vpc-demo

[![Actions Status](https://github.com/netserf/terraform-gcp-vpc-demo/workflows/Terraform%20Lint/badge.svg)](https://github.com/netserf/terraform-gcp-vpc-demo/actions)
[![Actions Status](https://github.com/netserf/terraform-gcp-vpc-demo/workflows/Markdown%20Lint/badge.svg)](https://github.com/netserf/terraform-gcp-vpc-demo/actions)
[![Actions Status](https://github.com/netserf/terraform-gcp-vpc-demo/workflows/Markdown%20Links/badge.svg)](https://github.com/netserf/terraform-gcp-vpc-demo/actions)

Demo build for a Google Cloud VPC with subnets using Terraform.

This example borrows from the HashiCorp Terraform registry docs found
[here](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork)
. Modifications have been made to simplify the example for demos.

## Build Environment

These instructions assume you already have Google Cloud access and you're
working in the Cloud Shell. From here clone the repo and follow the build steps
below.

```bash
git clone https://github.com/netserf/terraform-gcp-vpc-demo.git
```

## Preparation Steps

The following script will ensure:

- GCP project ID is set
- Appropriate GCP APIs are enabled
- Terraform state file bucket is created

```bash
./gen_gcs_bucket.sh
```

## Build Steps

```bash
cd terraform
```

Pull the providers:

```bash
terraform init
```

Review  the plan:

```bash
terraform plan
```

Apply the updates:

```bash
terraform apply
```

## Clean Up

```bash
terraform destroy
```
