#!/bin/sh
# title: YouTube subscriptions to Newsboat
# author: Taro Turtiainen - TohtoriKuka
# date: 2020.05.22
# Description: Makes opml file downloaded from YouTube to Newsboat rss-reader format.

opmlFile=$1

sed 's/<outline text=/\n/g;s/<\/outline/\n/g;s/ \/>//g;s/ title=/|/g;s/ type="rss"//g;s/ xmlUrl=/|/g' $opmlFile|\
	cut -d\| -f2-3|\
	awk '{FS="\""} {print $4" \"~"$2" (YouTube)\" " "\"YouTube\""}'|\
       	grep 'https' > ./list
