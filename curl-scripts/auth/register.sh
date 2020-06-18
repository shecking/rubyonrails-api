#!/bin/bash

curl "http://localhost:4741/register" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "first_name": "'"${FIRSTNAME}"'",
      "last_name": "'"${LASTNAME}"'",
      "username": "'"${USERNAME}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
