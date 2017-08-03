#!/bin/bash
date
du -sh /var/www/html/uploads/
du -sh /var/www/html/trash/
dcu=$(ls /var/www/html/uploads/ -lR | grep ^d | wc -l)
dct=$(ls /var/www/html/trash/ -lR | grep ^d | wc -l)
echo "Uploads: " $dcu
echo "Trash: " $dct