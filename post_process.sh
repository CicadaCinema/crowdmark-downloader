#!/bin/bash

# Change the font URLs to local references.
cp -i ./fonts/* ./output/
find ./output/ -type f -iname "*.html" -exec sed -i 's/?V=2\.7\.5//g' {} +
find ./output/ -type f -iname "*.html" -exec sed -i 's/https:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/mathjax\/2\.7\.5\/fonts\/HTML-CSS\/TeX\/woff/../g' {} +
find ./output/ -type f -iname "*.html" -exec sed -i 's/https:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/mathjax\/2\.7\.5\/fonts\/HTML-CSS\/TeX\/otf/../g' {} +

# HTML cleanup
find ./output/ -type f -iname "*.html" -exec sed -i 's/<img crossorigin="anonymous"/<img/g' {} +
