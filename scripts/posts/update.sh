#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "post": {
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'",
      "date_posted": "'"${DATE_POSTED}"'"
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
