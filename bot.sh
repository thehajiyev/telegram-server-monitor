#!/bin/bash

source ./config.sh

HOSTNAME=$(hostname)
MEMORY=$(free -h)
UPTIME=$(uptime)

MESSAGE="Server: $HOSTNAME

Memory:
$MEMORY

Uptime:
$UPTIME"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d chat_id="$CHAT_ID" \
    --data-urlencode text="$MESSAGE"
