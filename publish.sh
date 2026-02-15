# Clean and Publish using the project settings
dotnet clean
dotnet publish -c Release

# Remove old docs folder and recreate
rm -rf docs
mkdir docs

# Copy the contents of wwwroot into docs
cp -r bin/Release/net8.0/publish/wwwroot/* docs/

# FIX 1: Tell GitHub NOT to use Jekyll (which hides _framework folder)
touch docs/.nojekyll

# FIX 2: Create a 404.html to handle page refreshes
cp docs/index.html docs/404.html

echo "Done! Push the 'docs' folder to GitHub."