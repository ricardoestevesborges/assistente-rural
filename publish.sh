dotnet clean
dotnet publish -c Release

# Remove old docs folder
rm -rf docs
mkdir docs

# Copy the contents of wwwroot into docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/

# Optional: GitHub Pages custom 404
cp docs/index.html docs/404.html
