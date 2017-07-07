#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/technologies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "technologies": {
      "name": "'"${TITLE}"'",
      "link": "'"${BODY}"'"
    }
  }'


  #  \
  # --header "Authorization: Token token=$TOKEN"

echo
