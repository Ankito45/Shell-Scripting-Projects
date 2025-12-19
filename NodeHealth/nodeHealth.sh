#!/bin/bash


###############
# Author: Ankit
# Date: 01/12/2023

# This script ouputs the node health
# Version v1
###############


set -x # means debug mode
set -e # exit the shell script when there is an error
set -o pipefail

# echo "Print the disk space"
df -h

# echo "Print the memory"
free -g 

# echo "Print the CPU"
nproc

# echo "Print all processes of amazon with pid only
ps -ef | grep "amazon" | awk -F" " '{print $2}'
