git init

git remote add origin origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

# Generate a timestamp with the desired format

$version = Get-Date -Format "MM.dd.yyyy"

# Build the Docker image with the updated version number


docker build . --file Dockerfile --tag webapp:1.$version

#az acr login --name MyRegistry05



