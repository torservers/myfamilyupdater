#!/bin/bash
log() { echo "$@" 1>&2; }
fps=''
for server in "$@"
do
 log "Fetching from $server..." 
 fp=$( ssh -p 22001 root@$server "cat /var/lib/tor/*/fingerprint  | cut -d ' ' -f 2" )
 if [ -z "$fp" ]; then
  log "no fingerprints found?"
 else
  log "$fp"
  fps+=" "$fp
 fi
done
fps=$( echo $fps | tr ' ' ',' )
echo "MyFamily $fps"
