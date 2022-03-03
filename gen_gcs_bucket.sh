#!/bin/bash

region=us-central1
zone=us-central1-b
uuid=$(python3 -c 'import uuid; my_uuid = str(uuid.uuid1()); mini_uuid = my_uuid.split("-")[0]; print(mini_uuid)')
dummy_file=".dummy"
bucket="tf-trial-${uuid}"
folder="terraform-state"
gs_url="gs://${bucket}"

echo "enable a few google apis ..."
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable storage.googleapis.com

echo "create terraform state file bucket ..."
gsutil mb -l $region ${gs_url}
touch $dummy_file
gsutil cp $dummy_file -l $region ${gs_url}/${folder}/
rm $dummy_file

echo "check the bucket ..."
gsutil ls -l ${gs_url}
