#!/usr/bin/env sh

set -e 

npm run build 

cd dist

git init 

git add -A

git commit -m 'new deployment'

git push -f https://github.com/juanramirezwebdev/Vue-pages.git master:gh-pages

cd - 