#!/bin/bash

date | awk '{print $4}'
uptime | awk '{print $4}'
df -h | grep -i tmpfs
