#!/bin/bash

find /root/scripts/real-time-scripts -mtime +60 -exec mv {} {}.old \;




# -1 stand for today
# +1 stands for past 30 days back
