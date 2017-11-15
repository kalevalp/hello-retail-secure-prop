#!/usr/bin/env bash


for i in {0..29}
do
  echo $i

  curl -w "\n" -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654321", "phone": "5551231234", "origin": "hello-retail/test-script-update-phone/testid/peter", "user" : "Peter", "pass" : "peterspassword" }' $1
  curl -w "\n" -X POST --data '{ "schema": "com.nordstrom/user-info/update-phone/1-0-0", "id": "654322", "phone": "5551231235", "origin": "hello-retail/test-script-update-phone/testid/paul",  "user" : "Paul",  "pass" : "paulspassword"  }' $1

  sleep 5
  curl -w "\n" -X POST --data '{ "schema": "com.nordstrom/product/create/1-0-0", "id": "1234567890'$i'", "origin": "hello-retail/test-script-create-product/testid/mark", "category": "Things", "name": "A sort of thing", "brand": "ACME", "description": "A sort of thing from a company that makes everything", "price": "10", "user" : "Owen", "pass" : "owenspassword" }' $1
  sleep 5
  curl -w "\n" -X POST --data '{ "schema": "com.nordstrom/product/create/1-0-0", "id": "1234567891'$i'", "origin": "hello-retail/test-script-create-product/testid/mark", "category": "Things", "name": "A sort of thing", "brand": "ACME", "description": "A sort of thing from a company that makes everything", "price": "10", "user" : "Owen", "pass" : "owenspassword" }' $1
  sleep 30

  curl -w "\n" -X POST --data '{ "MediaUrl0": "https://cdn.shopify.com/s/files/1/2174/7307/products/ACMEInventorySeries_Magnet_FringeFocus_Large_df22d76c-1009-46b7-8cfa-ddfb00cb08c9_1024x1024.png", "MediaContentType0": "image/jpeg", "From": 15551231234, "user" : "Peter", "pass" : "peterspassword" }' $2
  curl -w "\n" -X POST --data '{ "MediaUrl0": "https://cdn.shopify.com/s/files/1/2174/7307/products/ACMEInventorySeries_Magnet_FringeFocus_Large_df22d76c-1009-46b7-8cfa-ddfb00cb08c9_1024x1024.png", "MediaContentType0": "image/jpeg", "From": 15551231235, "user" : "Paul",  "pass" : "paulspassword" }' $2

  sleep 15
  curl -w "\n" -X POST --data '{"user": "Owen", "pass": "owenspassword", "id": "1234567890'$i'"}' $3
  curl -w "\n" -X POST --data '{"user": "Owen", "pass": "owenspassword", "id": "1234567891'$i'"}' $3
  sleep 15

done

time for j in {0..59}
do
  curl -X GET $4'?user=Alice&pass=alicespassword'
  curl -X GET $5'?category=Things&user=Alice&pass=alicespassword'
done
