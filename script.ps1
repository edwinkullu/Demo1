git init

git remote -v

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main

$i = Get-Date -Format "yyyyMMdd_hhmmss"

echo $i
# Build the Docker image with the updated version number

#docker build --tag webapp1:v1.$i .

docker build . --file Dockerfile --tag webapp:$i

#docker tag webapp:latest azureregistery000.azurecr.io/webapp:v1.$i

az login --service-principal -u "85f4c690-8f79-48bb-a917-1647925d614e" -p "Lii8Q~E_ZMxJvOE-JDYhu3NcCGRlfK1Qn8NW7acq" --tenant "4ec9e9d4-1dad-427f-adf9-e774dca413d1"

az acr login -n azureregistery000


docker push webapp:$i

az acr repository list --name azureregistery000 --output table

