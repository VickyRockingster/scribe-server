#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "email": "'"${EMAIL}"'",
      "password": "'"${PW}"'",
      "password_confirmation": "'"${PW}"'"
    }
  }'

echo
