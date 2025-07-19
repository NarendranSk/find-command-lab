#!/bin/bash

###################
#
#Name:Narendran Sivakumar
#Date: 18/07/2025
#Script: This script is used to auto clean up the old files
#
####################

set -x  #x debug outpu
set -eo #e -> exit when error occurs and o --> if pipe fails

{
	echo "Deleting old files"
	find /home/devops/Downloads/Linux_Learning/Deletingoldfiles -type f -atime 5 -print0 | xargs -0 rm -f
        echo "done"
} | tee -a /home/devops/Downloads/find-command-lab/output/output_sample.txt




