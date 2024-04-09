cd c:/prod/publish
rm c:/prod/publish/* -r -force

cd c:/prod/source
rm c:/prod/source/* -r -force

cd c:/prod/source/
dotnet publish -o c:/prod/publish