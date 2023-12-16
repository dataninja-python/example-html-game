#!/bin/bash

echo "# example-html-game" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:dataninja-python/example-html-game.git
git push -u origin main
