param([switch]$Release,[switch]$Clean)
$ErrorActionPreference = "Stop"

$root = Split-Path $MyInvocation.MyCommand.Path
$gui = Join-Path $root "SecHex-GUI"
$cmd = Join-Path $root "SecHex-CMDLINE"
$guiProj = Join-Path $gui "SecHex-GUI"
$cmdProj = Join-Path $cmd "RPZ-HWID"
$cfg = if ($Release) { "Release" } else { "Debug" }

Write-Host "==== SecHex Build Script ====" -ForegroundColor Cyan
Write-Host "Mode: $cfg" -ForegroundColor Yellow
$v = dotnet --version
Write-Host "Using .NET: $v" -ForegroundColor Green
Write-Host ""

Write-Host "Cleaning old builds..." -ForegroundColor Yellow
$pathsToClean = @(
	(Join-Path $guiProj "bin"),
	(Join-Path $guiProj "obj"),
	(Join-Path $cmdProj "bin"),
	(Join-Path $cmdProj "obj")
)

foreach ($path in $pathsToClean) {
	if (Test-Path $path) {
		Remove-Item -Recurse -Force $path
		Write-Host "Deleted: $path" -ForegroundColor DarkGray
	}
}

Write-Host ""
Write-Host "Building GUI..." -ForegroundColor Cyan
Push-Location $gui
dotnet restore --verbosity quiet
if ($LASTEXITCODE -ne 0) { throw "GUI restore failed." }
dotnet build --configuration $cfg --no-restore
if ($LASTEXITCODE -ne 0) { throw "GUI build failed." }
Write-Host "OK: GUI built" -ForegroundColor Green
Pop-Location

Write-Host ""
Write-Host "Building CLI..." -ForegroundColor Cyan
Push-Location $cmd
dotnet restore --verbosity quiet
if ($LASTEXITCODE -ne 0) { throw "CLI restore failed." }
dotnet build --configuration $cfg --no-restore
if ($LASTEXITCODE -ne 0) { throw "CLI build failed." }
Write-Host "OK: CLI built" -ForegroundColor Green
Pop-Location

Write-Host ""
Write-Host "==== Build Complete ====" -ForegroundColor Green

$guiOutRoot = Join-Path $guiProj (Join-Path "bin" $cfg)
$cmdOutRoot = Join-Path $cmdProj (Join-Path "bin" $cfg)

if (Test-Path $guiOutRoot) {
	Get-ChildItem -Path $guiOutRoot -Directory | ForEach-Object {
		Write-Host "GUI: $($_.FullName)" -ForegroundColor Gray
	}
}

if (Test-Path $cmdOutRoot) {
	Get-ChildItem -Path $cmdOutRoot -Directory | ForEach-Object {
		Write-Host "CLI: $($_.FullName)" -ForegroundColor Gray
	}
}

