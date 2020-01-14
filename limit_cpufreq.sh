#! /bin/bash

#this script limits the maximum cpu frequency.
#it is taken from an answer by Doug Smythies on stackoverflow
#it is intended to give longer battery life to your laptop.

#certain workloads will take longer, but lower frequency means lower power consumption

cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do echo "1400000" > $file; done
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
