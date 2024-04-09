$logFilePath = "C:\test\log.txt"

cd c:/prod/source/
powershell.exe -Command dotnet publish -o c:/prod/publish
Add-Content -Path $logFilePath -Value "started dotnet publish"

Start-WebSite -Name "Default Web Site"
Add-Content -Path $logFilePath -Value "Started website server"

# Perform database migrations

# Start other services here as well.

# Send the teams notifications.



