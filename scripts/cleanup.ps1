$logFilePath = "C:\test\log.txt"

cd c:/prod/publish
rm c:/prod/publish/* -r -force
Add-Content -Path $logFilePath -Value "Cleaned up 'c:/prod/publish' folder"

cd c:/prod/source
rm c:/prod/source/* -r -force
Add-Content -Path $logFilePath -Value "Cleaned up 'c:/prod/source' folder"
