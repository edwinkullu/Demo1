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

az login --service-principal -u 0d0019e5-9c82-4a1e-be5e-6ca782ecf637 --tenant 4ec9e9d4-1dad-427f-adf9-e774dca413d1

az acr login -n azureregistery000

docker tag webapp:v1.$i azureregistery000.azurecr.io/webapp:latest



