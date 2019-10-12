#!/usr/bin/env bash
echo "\r\nSMART MONITOR"
date
echo "\r\nSize of Directories"
du -sh /var/www/html/uploads/
du -sh /var/www/html/trashed/
dcu=$(ls /var/www/html/uploads/ -lR | grep ^d | wc -l)
dct=$(ls /var/www/html/trashed/ -lR | grep ^d | wc -l)
echo "\r\nDisk space"
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }'
echo "\r\nFiles"
echo "Uploads: " $dcu
echo "Trashed: " $dct
echo "----"
echo "\r\n"
