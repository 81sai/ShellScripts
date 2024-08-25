#!/bin/bash

#set -x

count=0
echo " enter a word : "
read word
#echo " you entered: $word"
echo "  enter a character that you want to search in that word : "
read c
#echo " you entered: $c"
echo "  enter second character u want to search in above word: "
read c1
count=`grep -o s <<<"$word" | wc -l`
count1=$(expr length "$word" - length `echo $word | sed "s/$c1//g"`)

echo " The number of $c in $word are $count"
echo " The number of $c1 in $word are $count1"
