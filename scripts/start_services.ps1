
cd c:/prod/source/
dotnet publish -o c:/prod/publish

Start-WebSite -Name "Default Web Site"

# Perform database migrations

# Start other services here as well.

# Send the teams notifications.


# setup a sample log
$filePath = "C:\test\log.txt"
$content = "This is a log from CodeDeploy script named 'start_other_services.ps1'"

Set-Content -Path $filePath -Value $content -force
