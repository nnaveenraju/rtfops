#!/usr/bin/env bash

# set environment variables
[[ -f ../env ]] && source ../env

ENDPOINT="https://anypoint.mulesoft.com/hybrid/api/v2/organizations/${ORG_ID}/environments/${ENV_ID}/deployments"

# Get mule apps deployed to specified env
curl -Lks ${ENDPOINT} \
    -H "Authorization: Bearer ${TOKEN}" \
    -H "Cache-Control: no-cache" \
    | jq
