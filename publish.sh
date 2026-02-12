dotnet publish -c Release -p:BaseHref=/assistente-rural/

rm -rf docs
mkdir docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/
