#!/bin/bash

#script pour renommer des fichiers MP3 en ajoutant le nom du dossier avant.
find . -iname '*.mp3' | while read line; do 
	name=$(basename "$line") ;
	dir=$(dirname "$line") ;
	mv "$line" "$dir/$(basename "$dir")-$name";
done;