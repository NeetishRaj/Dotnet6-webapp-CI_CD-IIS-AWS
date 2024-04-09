$logFilePath = "C:\test\log.txt"
Start-Transcript -path $logFilePath -append
cd c:/prod/publish
rm c:/prod/publish/* -r -force
Add-Content -Path $logFilePath -Value "Cleaned up 'c:/prod/publish' folder"

cd c:/prod/source
rm c:/prod/source/* -r -force
Add-Content -Path $logFilePath -Value "Cleaned up 'c:/prod/source' folder"
Stop-Transcript