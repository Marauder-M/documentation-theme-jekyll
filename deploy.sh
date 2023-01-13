#!/usr/bin/bash

bundle exec jekyll b
cd _site
find . -type f -name '*.html' -exec sh -c 'mv "$1" "${1%.html}.aspx"' _ {} \;
cd ..
