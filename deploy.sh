#!/bin/sh
echo "start deploying the weblog."
hugo
rm -rf ./sivertigo.github.io/*
cp ./CNAME ./sivertigo.github.io/

cp -rf ./docs/* ./sivertigo.github.io/
cp -rf ./content ./sivertigo.github.io/content
cd ./sivertigo.github.io
git add .
git commit -m "add new articles"
git push
