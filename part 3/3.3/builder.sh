#!/bin/bash

# clone repo
git clone https://github.com/$1
repo_name=$(echo $1 | cut -d'/' -f2)

# building the image
cd $repo_name
docker build -t app -f Dockerfile .

# publishing the image
docker push $2

# removing the cloned repo
cd ..
rm -rf $repo_name