#!/bin/zsh

sourceDir=~/code/mwa/_posts
echo $sourceDir

for year in $sourceDir/*; do
  dirName=$(basename $year)
  echo "Directory:$dirName"
done