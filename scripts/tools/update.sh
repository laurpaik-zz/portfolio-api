#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tools/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "tool": {
      "technology_id": "'"${TECH_ID}"'"
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
