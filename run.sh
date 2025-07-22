#!/bin/sh

if [ ! -f "$1" ]; then
	printf "\nERROR: File Not Found ! \n"
	printf "Usage %s : <input markdown file> <expected url> <output html destination>\n\n" "$0" 
	exit 1
fi

if [ -z "$2" ]; then
	printf "\nUsage %s : <input markdown file> <expected url> <output html destination>\n\n" "$0" 
	exit 1
fi

if [ -z "$3" ]; then
	printf "\nUsage %s : <input markdown file> <expected url> <output html destination>\n\n" "$0" 
	exit 1
fi

pandoc $1 \
--template="custom.html"  \
--standalone \
--metadata date="$(date -u +'%H:%M UTC %d %^b %Y')"  \
--metadata url=$2 > $3
