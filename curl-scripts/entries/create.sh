#!/bin/bash

curl "http://localhost:4741/entries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "entry": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo
