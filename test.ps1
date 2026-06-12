$port = 5261

Write-Host "=== Listing services ==="
grpcurl -plaintext localhost:$port list

Write-Host "`n=== Calling SayHello ==="
grpcurl -plaintext -d '{"name":"World"}' localhost:$port helloworld.Greeter/SayHello

Write-Host "`n=== Health check ==="
grpcurl -plaintext localhost:$port grpc.health.v1.Health/Check
