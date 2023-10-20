#!/bin/bash
# Real time errors file
# Author: Farooq

grep -i error /root/scripts/real-time-scripts/messages > /root/scripts/real-time-scripts/error.out

grep -i warn /root/scripts/real-time-scripts/messages > /root/scripts/real-time-scripts/warn.out

grep -i fail /root/scripts/real-time-scripts/messages > /root/scripts/real-time-scripts/fail.out
