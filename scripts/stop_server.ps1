# setup a sample log
$logFilePath = "C:\test\log.txt"
$content = "starting deploy operations"
Set-Content -Path $logFilePath -Value $content -force

Start-Transcript -path $logFilePath -append

Stop-WebSite -Name "Default Web Site"
Add-Content -Path $logFilePath -Value "Stopped website server!"

Stop-Transcript