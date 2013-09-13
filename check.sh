#!/bin/bash


#example
#if [ -f ./lib/example.jar ]
#then
#    echo example.jar is OK!
#else
#    echo example.jar not found DOWNLOADING!
#    wget http://link.to/example.jar -O ./lib/example.jar
#fi


#check if pricbot exist
if [ -f ./lib/pircbot.jar ]
then
    echo pircbot.jar is OK!
else
    wget http://repo1.maven.org/maven2/pircbot/pircbot/1.5.0/pircbot-1.5.0.jar -O ./lib/pircbot.jar
fi

#check if jsoup exist
if [ -f ./lib/jsoup.jar ]
then
    echo jsoup.jar is OK!
else
    echo jsoup.jar not found DOWNLOADING!
    wget http://jsoup.org/packages/jsoup-1.7.2-sources.jar -O ./lib/jsoup.jar
fi
