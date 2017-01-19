#!/bin/bash

## View twitch livestreams with mpv video player ##
## Requires use of oauth token for twitch account (google it), and the livestreamer package/python script ##

twitchtoken=##insert oauth token here##
cname=$1

if [[ -z $url ]]; then
    echo -e "Twitch Livestream Viewer\nUsage: $0 <streamer channel name>"
    exit 1
fi

if [[ "$cname" ]]; then
    livestreamer --twitch-oauth-token $twitchtoken \
    twitch.tv/$cname medium --player mpv
fi

exit 0
