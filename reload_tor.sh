#!/bin/bash
for server in "$@"
do
 ssh -p 22001 root@$server "service tor reload" 
done
