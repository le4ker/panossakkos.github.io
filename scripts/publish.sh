#!/bin/bash

echo "Generating categories..."
ruby ./scripts/generate-categories.rb

echo "Generating posts..."
ruby ./scripts/generate-tags.rb

echo "Building site..."
JEKYLL_ENV=production jekyll build

echo "Publishing..."
scp -r _site/* root@134.209.239.131:/usr/share/nginx/html
