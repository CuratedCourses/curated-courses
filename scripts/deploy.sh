#! /bin/bash

./node_modules/harp/bin/harp compile
git checkout gh-pages 
cp www/*.html .
git add *.html
cp www/*.js .
git add *.js
cp www/*.css .
git add *.css
cp -R www/css css
git add css/*
cp -R www/js js
git add js/*
cp -R www/photographs photographs
git add photographs/*.jpg 
git commit -m "Deploying $(date)" 
git push origin gh-pages
git checkout master
