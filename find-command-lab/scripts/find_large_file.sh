#!/bin/bash


############
#Author : Narendran Sivakumar
#Date: 17-07-2025
#Script: This script is used to find the large file that consume more space
############


set -x #debug output
set -eo

{
	echo "Searching large file"
	find /home/devops/Downloads/Linux_Learning -type f -size +200M -exec ls -lrth {} \; #(the path which i given here is for learning purpose in realcase we should use the log path or tmp as per the requirement)
	echo "Done"
} | tee -a /home/devops/Downloads/find-command-lab/output/output_sample.txt







