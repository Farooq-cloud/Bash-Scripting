#!/bin/bash
ps -ef | grep -i <process name> | grep -v grep | awk ‘{print $2}’ | xargs -I{} kill {}
echo “All <process name> process are killed”

==========================================================================================

This command will shows the output of how many process running
# ps -ef | grep -i <process name> | grep -v grep | awk ‘{print $2}’

# ps -ef | grep -i <process name> | grep -v grep | awk ‘{print $2}’ | xargs -I{} kill {} (It will kill all process)

# ps -ef | grep -i <process name> | grep -v grep | awk ‘{print $2}’ | xargs -I{} kill -9 {} (Forcefully kill all process)
