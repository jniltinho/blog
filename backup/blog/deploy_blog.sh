#!/bin/bash

rm -f db.json
rm -rf public/* node_modules

npm install
hexo generate

### Site Static for Github Pages
## echo "www.linuxpro.com.br" > public/CNAME
## cd public/
## git add *
## git commit -m "Update Posts on Blog"
## git push origin gh-pages

## Update Raw Blog to GitHub Repo
#git add *
#git commit -m "Update Raw Blog to Github"
#git push origin master

### Site Static for Google APP Engine
## GCloud Auth
echo $GCP_CREDENTIALS|gcloud auth activate-service-account --key-file=-
gcloud -q --project=bloglinuxpro app deploy app.yaml -v=v$(date +'%Y%m%d-%H%M') --promote
