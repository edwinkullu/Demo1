git init

git remote add origin origin https://github.com/edwinkullu/Demo1.git

git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"


git push  -uf origin main



$i = Get-Date "MM.dd.yy"


# Build the Docker image with the updated version number


docker build . --file Dockerfile --tag webapp:v1.$i

#az login

#az acr login --name MyRegistry05



