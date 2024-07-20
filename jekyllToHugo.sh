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
  fileName=$(basename $FILE .md); # strip .md extension
  postName=${fileName:11} # strip 11-character date at front of file name
  echo $postName;
  mkdir $postName;
  mv $FILE $postName/index.md
done

echo 'COMPLETE'



