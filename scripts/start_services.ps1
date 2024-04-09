$transcriptLogFilePath = "C:\test\transcript_log.txt"
$logFilePath = "C:\test\log.txt"

Start-Transcript -path $transcriptLogFilePath -append

cd c:/prod/source/
dotnet publish -o c:/prod/publish
Add-Content -Path $logFilePath -Value "started dotnet publish"

Start-WebSite -Name "Default Web Site"
Add-Content -Path $logFilePath -Value "Started website server"

# Perform database migrations

# Start other services here as well.

# Send the teams notifications.

Stop-Transcript
