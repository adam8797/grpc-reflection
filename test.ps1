$port = 5261

Write-Host "=== Listing services ==="
grpcurl -plaintext localhost:$port list

Write-Host "`n=== Health check ==="
grpcurl -plaintext localhost:$port grpc.health.v1.Health/Check
