$url = "https://images.unsplash.com/photo-1508614589041-895b88991e3e?w=1200&auto=format&fit=crop&q=80"
$output = "$PSScriptRoot\vantage_drones.jpg"

try {
    Invoke-WebRequest -Uri $url -OutFile $output -UserAgent "Mozilla/5.0"
    Write-Host "Real drone photo downloaded successfully!"
} catch {
    # Fallback to alternate drone photo URL
    $url2 = "https://images.unsplash.com/photo-1507582020474-9a35b7d455d9?w=1200&auto=format&fit=crop&q=80"
    Invoke-WebRequest -Uri $url2 -OutFile $output -UserAgent "Mozilla/5.0"
    Write-Host "Fallback real drone photo downloaded successfully!"
}
