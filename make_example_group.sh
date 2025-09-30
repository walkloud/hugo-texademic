#!/bin/bash

npm install autoprefixer
npm install postcss-import
npm install bootstrap@5.3.8
rsync -avu --progress --delete node_modules/bootstrap/ assets/sass/bootstrap/

cp -r exampleSite/* .
