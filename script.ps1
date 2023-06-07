git init

git remote -v

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

$v = Get-Date -Format "yyyyMMddhhmmss"

echo $v
# Build the Docker image with the updated version number

#docker build --tag webapp1:v1.$i .

docker build . --file Dockerfile --tag webapp:$v

#docker tag webapp:latest azureregistery000.azurecr.io/webapp:v1.$i

#az login --service-principal -u "e489471d-e4d4-4814-91b6-887c91c9ffe7" -p "Zbs8Q~J0lXYJZbjgvqK4uZwb~zxaxAZgg3O7UdvX" --tenant "4ec9e9d4-1dad-427f-adf9-e774dca413d1"
az login
az acr login -n azureregistery000


docker push webapp:$v

az acr repository list --name azureregistery000 --output table

