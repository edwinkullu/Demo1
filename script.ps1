git init

git remote -v

git remote set-url  origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

$i = Get-Date -Format "dd-MM-yyyy HH:mm:ss"


# Build the Docker image with the updated version number


docker build --tag webapp:v1.$i .

#az login 

#az acr login -n azureregistery000


#docker push azureregistery000.azurecr.io/webapp:v1.$version

#az acr repository list --name azureregistery000 --output table

