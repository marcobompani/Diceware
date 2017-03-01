#!/bin/bash

DIR=$(dirname $0)
LAN=en
N=8
numberflag=false
languageflag=false
for par in $@; do
	if [ "$par" = -h ] || [ "$par" = --help ]; then
		echo "Usage: `basename $0` [--lang, --words, --help]"
		echo
		echo "-h, --help	show this help and exit"
		echo "-l, --lang	set the language of the list to use (default en)"
		echo "-w, --words	set the password length in words (default 8)"
		exit
	fi
	if [ "$numberflag" = true ]
		then
		N=$par
		numberflag=false
	fi
	
	if [ "$par" = --words ] || [ "$par" = -w ]
		then
		numberflag=true
	fi
	if [ "$languageflag" = true ]
		then
		LAN=$par
		languageflag=false
	fi
	
	if [ "$par" = --lang ] || [ "$par" = -l ]
		then
		languageflag=true
	fi
done	
for ((i=1; i<=$N;i++)); do
	NUMBER=$(cat /dev/urandom | tr -cd '1-6' | head -c 5)
	WORD=$(grep "$NUMBER" $DIR/word_list/word_list_$LAN.txt | awk '{print $2}')
	PASSWORD="$PASSWORD $WORD"
done	
echo $PASSWORD
