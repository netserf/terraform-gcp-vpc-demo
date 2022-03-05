#!/bin/bash

region=us-central1
zone=us-central1-b
uuid=$(python3 -c 'import uuid; my_uuid = str(uuid.uuid1()); mini_uuid = my_uuid.split("-")[0]; print(mini_uuid)')
dummy_file=".dummy"
bucket="tf-trial-${uuid}"
folder="terraform-state"
gs_url="gs://${bucket}"

echo "Ensure project id is set ..."
project_id=$(gcloud config get-value project 2> /dev/null)
[ -z "$project_id" ] && echo "ERROR: project id not found" && exit 1
echo "done"

echo "Update terraform template to use a unique bucket name ..."
sed -i "s/{BUCKET_NAME}/${bucket}/g" terraform/main.tf 
echo "done"

echo "Enable a few google apis ..."
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable storage.googleapis.com
echo "done"

echo "Create terraform state file bucket ..."
gsutil mb -l $region ${gs_url}
echo "done"

echo "Create terraform state file folder ..."
touch $dummy_file
# note - ignore the CommandException for this folder creation step
gsutil cp $dummy_file -l $region ${gs_url}/${folder}/ 2>&1 | grep -v "CommandException"
rm $dummy_file
echo "done"

echo "Check the bucket/folder exist ..."
gsutil ls -l ${gs_url} | awk '{print $1}'
echo "done"
