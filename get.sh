#!/bin/bash

## Script that grabs pictures from imgur albums ##

url=$1

if [[ -z $url ]]; then
  echo -e "Imgur  downloader\nUsage: $0 <album url>"
  exit 1
fi

if [[ "$url" =~ http://i.imgur.com/ ]]; then
wget -q "$1" -O -|grep 'post"'|cut -d\" -f2|while read id

do 
    echo "Downloading $id.jpg"
    wget -q -c "http://i.imgur.com/$id.jpg"
done
fi
