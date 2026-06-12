#!/bin/bash

PORT=5261

echo "=== Listing services ==="
grpcurl -plaintext localhost:$PORT list

echo -e "\n=== Health check ==="
grpcurl -plaintext localhost:$PORT grpc.health.v1.Health/Check
