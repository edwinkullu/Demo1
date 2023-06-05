git init

git remote add origin origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main


docker build --tag webapp:ver.1.0 .


az acr login --name MyRegistry05

docker image push MyRegistry05.azurecr.io/webapp:ver.1.1

