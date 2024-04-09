# setup a sample log
$transcriptLogFilePath = "C:\test\transcript_log.txt"
$logFilePath = "C:\test\log.txt"

Start-Transcript -path $transcriptLogFilePath -append

Set-Content -Path $logFilePath -Value "starting deploy operations" -force


Stop-WebSite -Name "Default Web Site"
Add-Content -Path $logFilePath -Value "Stopped website server!"

Stop-Transcript