#!/bin/bash

CHANNEL_URL="https://www.twitch.tv/hotbeatstv"
OUTPUT_FILE="./hotbeatstv.m3u8"

URL=$(streamlink --twitch-disable-ads --stream-url $CHANNEL_URL best)

if [ -n "$URL" ]; then
	echo "#EXTM3U" > "$OUTPUT_FILE"
	echo "$URL" >> "$OUTPUT_FILE"
fi
