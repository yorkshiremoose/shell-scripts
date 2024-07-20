#!/bin/zsh

outputDir=output
sourceDir=~/code/mwa/_posts
sourceImages=~/code/mwa/assets/images
year=2024

echo 'Deleting contents of output folder...'

rm -r $outputDir/*

echo 'Copying files to output folder...'

mkdir $outputDir/$year
cp -r $sourceDir/$year/ $outputDir/$year/

echo 'Creating directories for each post...'

cd $outputDir/$year

for FILE in *; do
  echo $(basename $FILE .md);
  mkdir $(basename $FILE .md);              # create directory from name without .md extension
  mv $FILE $(basename $FILE .md)/index.md   # move post to new directory and rename
done

echo 'COMPLETE'

