#!/bin/bash
rm -rf ExtractedPhotos/
mkdir ExtractedPhotos/
for dir in OriginalPhotos/*
do
    newdir=${dir/OriginalPhotos/ExtractedPhotos}
	mkdir $newdir
	for file in $dir/*
	do
		newpath="${file/OriginalPhotos/ExtractedPhotos}"
		echo "Attempting extraction to: ${newpath}"
		python app.py $file $newpath
	done
done
