#!/bin/bash

# Complete script for Sentinel API publishing.
# Documentation can be found at:
# https://www.terraform.io/cloud-docs/api-docs/policy-sets#create-a-policy-set-version



# 1. Define Variables

CONTENT_DIRECTORY="$1"
ORG_NAME="$(cut -d'/' -f1 <<<"$2")"
TF_HOSTNAME="ptfe.carlcorp.internal"
CAFILE="/Users/carljavier/src/carljavier/tfe-private-tls-certs/carlcorp.internal-agent-ca.pem"


# Create a Policy Set

curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @payloads/policy-set-no-vcs.json \
  https://$TF_HOSTNAME/api/v2/organizations/$ORG_NAME/policy-sets


# Create a Policy Set Version 

curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  https://$TF_HOSTNAME/api/v2/policy-sets/polset-3yVQZvHzf5j3WRJ1/versions

