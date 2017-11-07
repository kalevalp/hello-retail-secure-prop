#!/usr/bin/env bash

curl -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654321", "phone": "5551231234", "origin": "hello-retail/test-script-update-phone/testid/peter", "user": "Owen", "pass": "owenspassword" }' $1
curl -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654322", "phone": "5551231235", "origin": "hello-retail/test-script-update-phone/testid/paul", "user": "Owen", "pass": "owenspassword"  }' $1
curl -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654323", "phone": "5551231236", "origin": "hello-retail/test-script-update-phone/testid/patrick", "user": "Owen", "pass": "owenspassword"  }' $1
curl -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654324", "phone": "5551231237", "origin": "hello-retail/test-script-update-phone/testid/percy", "user": "Owen", "pass": "owenspassword"  }' $1
