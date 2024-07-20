#!/bin/zsh

year=2019
outputDir=output
sourceDir=~/code/mwa/_posts/$year

echo 'Deleting contents of output folder...'

rm -r $outputDir
mkdir $outputDir
cp -r $sourceDir/ $outputDir/$year

for DIR in $sourceDir/*; do
  dirName=$(basename $DIR)
  fileDate=${dirName:0:10} # keep first 11 characters of file
  isoDate=${fileDate}T09:00:00
  echo "Directory: $dirName\nDate: $isoDate"
done

echo 'Exiting...'

exit 1 # Break out if there was more code below
