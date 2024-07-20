#!/bin/zsh

outputDir=output
sourceDir=~/code/mwa/_posts
sourceImages=~/code/mwa/assets/images
year=2024

echo 'Deleting contents of output folder...'

rm -r $outputDir
mkdir $outputDir

echo 'Copying files to output folder...'

for year in $sourceDir/*; do

  dirName=$(basename $year)
  echo "Copying to $outputDir/$dirName/"

  mkdir $outputDir/$dirName
  cp -r $sourceDir/$dirName/ $outputDir/$dirName/

  echo "Creating directories for each post in $dirName"

  for FILE in $outputDir/$dirName/*; do
    fileName=$(basename $FILE .md); # strip .md extension
    postName=${fileName:11} # strip 11-character date at front of file name
    # echo $postName;
    mkdir $outputDir/$dirName/$postName;
    mv $FILE $outputDir/$dirName/$postName/index.md
  done

done

echo 'COMPLETE'



