#!/bin/sh
perl -le "print `uptime  | sed 's/^.*load\s\+average:\s\+//' | awk -F ',' '{print $1}'` / `grep processor /proc/cpuinfo | wc -l`;"
