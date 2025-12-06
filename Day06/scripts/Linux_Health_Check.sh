#!/bin/bash
############################################################
# Script Name : Linux_Health_Check.sh
# Author      : Edward Santosh
# Date        : 06-Dec-2025
# Purpose     : Basic node health verification script
# Description :
#   Performs simple health checks on a Linux system including:
#   - Disk space
#   - Memory usage
#   - Uptime
#   - Running processes
#   Demonstrates piping and basic shell discipline.
############################################################

echo "======================================="
echo "   Linux Node Health Check Started"
echo "======================================="
echo

# System info
echo "Hostname      : $(hostname)"
echo "Uptime        : $(uptime -p)"
echo "Current Time  : $(date)"
echo

# Disk Usage
echo "---- Disk Usage ----"
df -h
echo

# Memory Usage
echo "---- Memory Usage ----"
free -h
echo

# Top 5 memory consuming processes (using pipe)
echo "---- Top 5 Memory Consuming Processes ----"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
echo

# Top 5 CPU consuming processes (using pipe)
echo "---- Top 5 CPU Consuming Processes ----"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
echo

# Check important services (example pattern)
echo "---- Process Check (Example: ssh) ----"
ps -ef | grep -i ssh | grep -v grep
echo

echo "======================================="
echo "   Health Check Completed"
echo "======================================="
