#!/system/bin/sh

### Disable Dt2w
echo "0" > /sys/devices/virtual/input/clearpad/wakeup_gesture

### Multicore Power Saving
echo "1" > /sys/devices/system/cpu/sched_mc_power_savings
