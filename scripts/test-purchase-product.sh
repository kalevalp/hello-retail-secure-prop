#!/usr/bin/env bash

curl -X POST --data '{"user": "Owen", "pass": "owenspassword", "id": "1234567890", "storeCC" : true, "creditCard" : "1234123412341234", "requestId": "0000001"}' $1
