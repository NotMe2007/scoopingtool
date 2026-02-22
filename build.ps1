param([switch]$Release,[switch]$Clean)
$root = Split-Path $MyInvocation.MyCommand.Path
$gui = Join-Path $root "SecHex-GUI"
$cmd = Join-Path $root "SecHex-CMDLINE"
$cfg = if ($Release) { "Release" } else { "Debug" }
Write-Host "==== SecHex Build Script ====" -ForegroundColor Cyan
Write-Host "Mode: $cfg" -ForegroundColor Yellow
$v = dotnet --version
Write-Host "Using .NET: $v" -ForegroundColor Green
Write-Host ""
Write-Host "Cleaning old builds..." -ForegroundColor Yellow
Push-Location $gui
Remove-Item -Recurse -Force bin, obj -ErrorAction SilentlyContinue
Pop-Location
Push-Location $cmd
Remove-Item -Recurse -Force bin, obj -ErrorAction SilentlyContinue
Pop-Location
Write-Host ""
Write-Host "Building GUI..." -ForegroundColor Cyan
Push-Location $gui
dotnet restore --verbosity quiet 2>&1 | Out-Null
dotnet build --config $cfg --no-restore 2>&1 | Out-Null
Write-Host "OK: GUI built" -ForegroundColor Green
Pop-Location
Write-Host ""
Write-Host "Building CLI..." -ForegroundColor Cyan
Push-Location $cmd
dotnet restore --verbosity quiet 2>&1 | Out-Null
dotnet build --config $cfg --no-restore 2>&1 | Out-Null
Write-Host "OK: CLI built" -ForegroundColor Green
Pop-Location
Write-Host ""
Write-Host "==== Build Complete ====" -ForegroundColor Green
Write-Host "GUI: $gui\SecHex-GUI\bin\$cfg\net8.0-windows" -ForegroundColor Gray
Write-Host "CLI: $cmd\RPZ-HWID\bin\$cfg\net8.0" -ForegroundColor Gray

