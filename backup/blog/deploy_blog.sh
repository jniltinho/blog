#!/bin/bash

rm -f db.json
rm -rf public/*
hexo generate

### Site Static for Github Pages
## echo "www.linuxpro.com.br" > public/CNAME
## cd public/
## git add *
## git commit -m "Update Posts on Blog"
## git push origin gh-pages


### Site Static for Google APP Engine
## gcloud auth login
gcloud -q app deploy --project bloglinuxpro

## Update Raw Blog to GitHub Repo
git add *
git commit -m "Update Raw Blog to Github"
git push origin master