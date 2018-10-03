#!/bin/bash
#Checks if a file is older than 30 days and delete if it is.

timestamp=$(date +%Y%m%d_%H%M%S)
path="../../test"
filename=log_back_$timestamp.txt
log=$path/$filename

#find $path -name "*.txt"  -type f -mtime +7 -print -delete >> $log
find $path -mmin +5 -exec rm -f {} \;

echo "Backup:: Script Start -- $(date +%Y%m%d_%H%M)" >> $log

START_TIME=$(date +%s)

#... code for backup ...or any other operation ....


END_TIME=$(date +%s)

ELAPSED_TIME=$(expr $END_TIME - $START_TIME)


#echo "Backup :: Script End -- $(date +%Y%m%d_%H%M)" >> $log
#echo "Elapsed Time ::  $(date -d 00:00:$ELAPSED_TIME +%Hh:%Mm:%Ss) "  >> $l