git init

git remote add origin origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

# Generate a timestamp with the desired format
timestamp=$(date +%Y%m%d%H%M%S)
version="1.0.${timestamp}"

# Build the Docker image with the updated version number


docker build . --file Dockerfile --tag webapp:${version}


az acr login --name MyRegistry05



