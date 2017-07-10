#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tools"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "tool": {
      "project_id": "'"${PROJECT_ID}"'",
      "technology_id": "'"${TECH_ID}"'"
    }
  }'


  #  \
  # --header "Authorization: Token token=$TOKEN"

echo
