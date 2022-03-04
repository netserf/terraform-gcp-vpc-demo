#!/bin/bash

region=us-central1
zone=us-central1-b
uuid=$(python3 -c 'import uuid; my_uuid = str(uuid.uuid1()); mini_uuid = my_uuid.split("-")[0]; print(mini_uuid)')
dummy_file=".dummy"
bucket="tf-trial-${uuid}"
folder="terraform-state"
gs_url="gs://${bucket}"

echo "Enable a few google apis ..."
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable storage.googleapis.com

echo "Create terraform state file bucket ..."
gsutil mb -l $region ${gs_url}

echo "Create terraform state file folder ..."
touch $dummy_file
# note - ignore the CommandException for this folder creation step
gsutil cp $dummy_file -l $region ${gs_url}/${folder}/ 2>&1 | grep -v "CommandException"
rm $dummy_file

echo "Check the bucket/folder exist ..."
gsutil ls -l ${gs_url} | awk '{print $1}'
