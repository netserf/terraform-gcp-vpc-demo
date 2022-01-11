# tf-infra-gidc-instance-repo-template

This is a template repo for for use in GIDC projects that have SA managed VM instances.

The terraform/tf_config.tf file needs to be modifed to contain the project id.

For complete information on VM definitions, please see the documentation for the [tf-module-gcp-gidc-vm-mutable](https://github.com/telus/tf-module-gcp-gidc-vm-mutable)

Cloud Triggers should be created in the proeject repo to point at your new repo.
