#!/bin/zsh

outputDir=output
sourceDir=~/code/mwa/_posts
sourceImages=~/code/mwa/assets/images

echo 'Deleting contents of output folder...'

rm -r $outputDir/*

echo 'Copying files to output folder...'

mkdir $outputDir/2024
cp $sourceDir/2024/2024-07-12-tenebre.md $outputDir/2024/tenebre.md

echo 'COMPLETE'

