git init

git remote -v

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

#$i = Get-Date -Format "MM.dd.yyyy HH:mm:ss"


# Build the Docker image with the updated version number

#docker build --tag webapp1:v1.$i .

docker build . --file Dockerfile --tag webapp:v1.0

#docker tag webapp:latest azureregistery000.azurecr.io/webapp:v1.$i


#az login 

#az acr login -n azureregistery000


#docker push azureregistery000.azurecr.io/webapp:v1.$version

#az acr repository list --name azureregistery000 --output table

