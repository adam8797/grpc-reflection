#!/bin/bash

PORT=5261

echo "=== Listing services ==="
grpcurl -plaintext localhost:$PORT list

echo -e "\n=== Calling SayHello ==="
grpcurl -plaintext -d '{"name":"World"}' localhost:$PORT helloworld.Greeter/SayHello

echo -e "\n=== Health check ==="
grpcurl -plaintext localhost:$PORT grpc.health.v1.Health/Check
