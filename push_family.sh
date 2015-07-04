#!/bin/bash
log() { echo "$@" 1>&2; }

read newfamily
echo "New Family: $newfamily"
for server in "$@"
do
 log "Pushing to $server..."
 ssh -p 22001 root@$server "sed -i 's/^MyFamily.*/$newfamily/' /etc/tor/*" 
done
