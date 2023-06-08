git init

git remote -v

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

$v = Get-Date -Format "yyyyMMdd_hhmmss"

Write-Output $v
# Build the Docker image with the updated version number

#docker build --tag webapp1:v1.$i .

docker build . --file Dockerfile --tag azureregistery000.azurecr.io/webapp:$v

#docker tag webapp:latest azureregistery000.azurecr.io/webapp:v1.$i
#az login

az login --service-principal -u{39c95471-bcfc-4bdc-b53d-eef346ab1a89} -p{YLx8Q~uJzzU4LUrX2G0hQsHZRVUv~f4lG.5.NcEt} --tenant{4ec9e9d4-1dad-427f-adf9-e774dca413d1}

az acr login -n azureregistery000


docker push azureregistery000.azurecr.io/webapp:$v

az acr repository list --name azureregistery000 --output table

