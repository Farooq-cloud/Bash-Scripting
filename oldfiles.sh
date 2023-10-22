#!/bin/bash

find /root/scripts/real-time-scripts -mtime +60 -exec mv {} {}.old \;
