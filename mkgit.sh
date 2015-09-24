#!/bin/bash

echo "# Comp2101" >> README.md
git init
git add README.md
git config --global user.email "adam.d.ozga@gmail.com"
git config --global user.name "BrutusTheCat"
git commit -m "first commit"
git remote add origin https://github.com/BrutusTheCat/Comp2101.git
git push -u origin master
