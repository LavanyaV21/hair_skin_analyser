Write-Host "==========================================================" -ForegroundColor Magenta
Write-Host "       DermaGlow AI - Hair & Skin Intelligence" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Magenta
Write-Host ""

$env:PATH = "$PSScriptRoot\..\tools\node;" + $env:PATH
Set-Location "$PSScriptRoot\server"

Write-Host "Starting DermaGlow AI full-stack server on http://localhost:5000..." -ForegroundColor Green
Start-Process "http://localhost:5000"
node src/index.js
