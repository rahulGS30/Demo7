# install-deps.ps1
 
Write-Host "Installing Node.js dependencies using npm ci..."
npm ci
 
if ($LASTEXITCODE -ne 0) {
    Write-Error "npm ci failed with exit code $LASTEXITCODE"
    exit $LASTEXITCODE
}
 
Write-Host "Dependencies installed successfully."