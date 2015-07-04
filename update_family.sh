#!/bin/bash
servers="axigy1.torservers.net axigy2.torservers.net 109.163.234.14 109.163.234.2 77.247.181.161 77.247.181.166" 
./pull_family.sh $servers | ./push_family.sh $servers 
./reload_tor.sh $servers
