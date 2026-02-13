dotnet publish -c Release

rm -rf docs
mkdir docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/
cp docs/index.html docs/404.html