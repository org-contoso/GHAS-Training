# Download, extract, and set up CodeQL CLI on Windows using PowerShell
# Reference: https://github.com/github/codeql-action/releases

$ErrorActionPreference = 'Stop'

# Variables
$codeqlUrl = "https://github.com/github/codeql-action/releases/latest/download/codeql-bundle-win64.tar.gz"
$codeqlSha256 = "e63a8baf8d3a6da86b577cab2b79b87302e5862a7dcfd786a9ac8da7c4d2b702"
$archiveName = "codeql-bundle-win64.tar.gz"
$extractDir = "codeql-bundle"

# Download CodeQL bundle
Write-Host "Downloading CodeQL CLI bundle..."
Invoke-WebRequest -Uri $codeqlUrl -OutFile $archiveName

# Verify SHA256 checksum
Write-Host "Verifying SHA256 checksum..."
$downloadedSha256 = (Get-FileHash $archiveName -Algorithm SHA256).Hash.ToLower()
if ($downloadedSha256 -ne $codeqlSha256) {
    Write-Error "SHA256 checksum does not match! Aborting."
    exit 1
}
Write-Host "Checksum verified."

# Extract the tar.gz archive
# Extract .gz to .tar and extract contents in one step
Write-Host "Extracting CodeQL CLI bundle..."
if (Test-Path $extractDir) { Remove-Item $extractDir -Recurse -Force }

# Extract .tar.gz directly to the current directory
& tar -xzf $archiveName

# Find the extraction root (should contain 'codeql' folder)
$codeqlRoot = Get-ChildItem -Directory | Where-Object { Test-Path (Join-Path $_.FullName 'codeql') } | Select-Object -First 1
if ($codeqlRoot -eq $null) {
    Write-Error "Could not find CodeQL extraction root."
    exit 1
}
$codeqlBin = Join-Path $codeqlRoot.FullName 'codeql'

# Add CodeQL to PATH for this session
$env:PATH = "$codeqlBin;" + $env:PATH
Write-Host "Added $codeqlBin to PATH."

# Test CodeQL CLI
Write-Host "Testing CodeQL CLI..."
codeql resolve packs
Write-Host "If you see a list of packs, CodeQL CLI is set up correctly."
