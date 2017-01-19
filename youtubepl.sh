#!/bin/bash

url=$1
tmpfile=$(mktemp ~/.tmp/youtubepl.tmp.$$.XXXX)

if [[ -z $url ]]; then
    echo -e "YouTube Playlist Down-Linker\nUsage: $0 <youtube playlist url>"
    exit 1
fi

if [[ "$url" =~ https://www.youtube.com/ ]]; then
echo -e "#EXTM3U\n#Playlist created by youtubepl.sh" > $tmpfile &&
wget -q "$1" -O - | grep -o '/watch?v=...........'\
| uniq -d\
| while IFS= read -r line;
    do echo "#EXTINF:0,https://www.youtube.com$line"; 
       echo "https://www.youtube.com$line"; done >> $tmpfile
fi

echo -e "Enter a name for the playist: "
read m3uFileName
cat $tmpfile > /home/cdag/Videos/$m3uFileName.m3u
echo -e "Playlist $m3uFileName created..."

rm -f $tmpfile

exit 0
