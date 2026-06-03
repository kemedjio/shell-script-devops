#!/bin/bash
#########################################################
# Autor: Anicet Kemedjio
# Date: 03/06/2026
#
# This script output the node health
#
# Version: v1
#########################################################
set -x   # debug mode
set -e   # exit the script when there is an error 
set -o pipefail # Failed the pipeline when one command failed

df -h

free -g 

nproc

ps -ef | grep | sonarqube | awk -F" " '{print $2}'