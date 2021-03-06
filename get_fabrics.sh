#!/usr/bin/env bash

# list rtf clusters registered under the org

# set environment variables
[[ -f ./env ]] && source ./env

ENDPOINT="https://anypoint.mulesoft.com/runtimefabric/api/organizations/${ORG_ID}/fabrics"

curl -Lks ${ENDPOINT} \
    -H "Authorization: Bearer ${TOKEN}" |
    jq

