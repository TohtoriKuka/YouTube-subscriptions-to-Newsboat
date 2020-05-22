#!/bin/sh
# title: YouTube subscriptions to Newsboat
# author: Taro Turtiainen - TorhtoriKuka
# date: 2020.05.22
# Description: Makes opml file downloaded from YouTube to Newsboat rss-reader format.

opmlFile=$1

cat $opmlFile |\
       	sed 's/<outline/\n<outline/g;s/<\/outline/\n<\/outline/g;s/ \/>//g' |\
       	grep 'https' |\
       	sed 's/<outline text=/|/g;s/ title=/|/g;s/ type="rss"/|/g;s/ xmlUrl=/|/g' |\
	awk '{FS="\""} {print $2"|"$6}' |\
       	awk '{FS="|"} {title=$1;url=$2} {print url" ~"title" (YouTube)"}' |\
	sed 's/~/"~/g;s/)/)"/g' |\
	grep 'https' \
	>./list
