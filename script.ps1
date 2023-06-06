git init

git remote add origin origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main



$i = Get-Date -Format "MM.dd.yyyy"


# Build the Docker image with the updated version number


docker build . --file Dockerfile --tag webapp:v1.$i

docker tag webapp:v1.$i azureregistery000.azurecr.io/webapp:latest


az login 

az acr login -n azureregistery000

docker tag webapp:v1.$i azureregistery000.azurecr.io/webapp:latest



