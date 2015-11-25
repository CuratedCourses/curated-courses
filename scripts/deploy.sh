#! /bin/bash

./node_modules/harp/bin/harp compile
git checkout gh-pages 
cp www/*.html .
cp www/*.css .
cp -R www/css css
git add *.html
git add *.css
git add css/*
git add photographs/*.jpg 
git commit -m "Deploying $(date)" 
git push origin gh-pages
git checkout master
