#!/bin/bash

###############
#Author: Narendran Sivakumar
#Date: 16-07-2025
#Script: This script is used to find the 3 days old logs
###############


set -x #debud output
set -eo


{
	echo "Finding old files from /var/log"
	find /var/log -type f -name "*.log*" -mtime +10 -exec ls -lrth {} \;
        echo "done"
} | tee -a /home/devops/Downloads/find-command-lab/output/output_sample.txt	


