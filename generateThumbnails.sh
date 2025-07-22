#!/bin/sh

mkdir -p dst/graphics/thumbnails dst/graphics/images/

for img ./src/graphics/*; do
	thumbnailName=$(basename "$img" .webp)
	convert "$img" -resize 400x "dst/graphics/thumbnails/${thumbnailName}_thumbnail.webp"
	cp $img ./dst/graphics/images/
