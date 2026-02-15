#!/bin/bash
# Clean and Publish
dotnet clean
dotnet publish -c Release

# Remove old docs folder
rm -rf docs
mkdir docs

# Copy the contents of the publish wwwroot into docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/

# Fix: GitHub Pages 404 redirect for Blazor routing
cp docs/index.html docs/404.html

# Optional: If you want to automate the base href change during build
sed -i 's/<base href="\/" \/>/<base href="\/assistente-rural\/" \/>/g' docs/index.html

echo "Build complete. Remember to push the 'docs' folder to GitHub."