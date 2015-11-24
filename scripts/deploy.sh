#! /bin/bash

./node_modules/harp/bin/harp compile
git checkout gh-pages 
cp -R www/js . 
cp www/*.html . 
git add www/js/* 
git add *.html 
git add photographs/*.jpg 
git commit -m "Deploying $(date)" 
git push origin gh-pages
