#!/usr/bin/env bash


aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000000 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000001 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000002 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000003 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000004 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000005 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000006 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000007 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000008 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
aws kinesis get-records --shard-iterator `aws kinesis get-shard-iterator --shard-id shardId-000000000009 --shard-iterator-type TRIM_HORIZON --stream-name devRetailStream`
