#!/bin/bash


############
#Author: Narendran Sivakumar
#Date: 16-07-2025
#script: This script is used to find the insecure file for security audit
###########


set -x 
set -eo


{
	echo "Finding insecur files"
	find /home/devops/Downloads/Linux_Learning/ -type f -perm 0777 | xargs ls -lrth #Here I am used xargs instead of -exec. 
	#-exec = run a command on each file #xargs = batch process multiple files. 
	echo "done"
} | tee -a /home/devops/Downloads/find-command-lab/output/output_sample.txt
