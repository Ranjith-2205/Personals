#!/bin/bash

#############################
# Meta Data
# Author : Ranjith 
# Date : 23/07/2024
# This script is used to find the node health 
# Versiopn : v1
#############################

set -x # debug mode 
#set -e # exist script when there is any error
set -o pipefail

echo " Disk value"
df -h

echo " Memory detail or RAM info "
free -g

echo " CPU Details "
nproc

echo " To get all info like CPU , RAM , Disk info "
top

echo " In coloumn , to find particular row value"
ps -ef | grep HP | awk -F" " '{print$2}' #here ps -ef is used to find the process and grep is used to find the particular process 
#    eg.."HP is a service name " and awk is used to find the particular row value and row mention in {Print$2}

ps -ef