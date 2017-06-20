#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "project": {
      "title": "'"${TITLE}"'",
      "link": "'"${LINK}"'",
      "front_end": "'"${FRONT}"'",
      "back_end": "'"${BACK}"'",
      "description": "'"${DESCRIPTION}"'",
      "image": "'"${IMAGE}"'",
      "tech": "'"${TECH}"'"
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
