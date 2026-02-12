dotnet publish -c Release
rm -rf docs
mkdir docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/
