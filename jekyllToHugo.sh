#!/bin/zsh

outputDir=output
sourceDir=~/code/mwa/_posts
sourceImages=~/code/mwa/assets/images
year=2024

echo 'Deleting contents of output folder...'

rm -r $outputDir
mkdir $outputDir

echo 'Copying markdown files to output folder...'
for year in $sourceDir/*; do
  dirName=$(basename $year)
  echo "Copying to $outputDir/$dirName/"

  mkdir $outputDir/$dirName
  cp -r $sourceDir/$dirName/ $outputDir/$dirName/

  echo "Creating directories for each post in $dirName"

  for FILE in $outputDir/$dirName/*; do
    fileName=$(basename $FILE .md); # strip .md extension
    postName=${fileName:11} # strip 11-character date at front of file name
    mkdir $outputDir/$dirName/$postName;
    mv $FILE $outputDir/$dirName/$postName/index.md
  done
done

echo "MARKDOWN COMPLETE"

echo 'Copying image files to matching markdown folders...'
for imageYear in $sourceImages/*/; do
  imageDirName=$(basename $imageYear)

  echo "Copying to $outputDir/$imageDirName/"

  for FILE in $sourceImages/$imageDirName/*; do
    imageFileName=$(basename $FILE .jpg)
    # use % to remove image suffix -side for pattern match
    cp $FILE $outputDir/$imageDirName/${imageFileName%-side}
  done
done

echo "IMAGES COMPLETE"




