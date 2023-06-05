git init
git pull remote https://github.com/edwinkullu/Demo1.git main
git remote add origin https://github.com/edwinkullu/Demo1.git
git config --global user.name "edwin kullu"

git config --global user.email "edwinkullu94@gmail.com"

git add .

git commit -m "update new file"

git checkout -b main

git push  origin main