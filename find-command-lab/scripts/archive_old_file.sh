#!/bin/bash

#################
#Author: Narendran Sivakumar
#Date: 17-07-2025
#Script: This is used to find old file to archive
#################

set -x
set -eo

{
	echo "finding old file and moving into archive folder"
	find /home/devops/Downloads/Linux_Learning/ -type f -name "*.log" -mtime 14 -exec mv {} /home/devops/Downloads/Linux_Learning/archive/ \;
	echo "done"
} | tee -a /home/devops/Downloads/find-command-lab/output/output_sample.txt


