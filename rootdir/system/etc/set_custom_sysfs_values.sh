#!/system/bin/sh

### Internal SD read ahead
MMC=`ls -d /sys/block/mmcblk*`
for i in $MMC; do
	if [ -e $i/bdi/read_ahead_kb ]; then
		echo "512" > $i/bdi/read_ahead_kb
	fi;
done

### SDcard read ahead
VD=`ls -d /sys/devices/virtual/bdi/*`
for i in $VD; do
	echo "512" > $i/read_ahead_kb;
done

### Multicore Power Saving
echo "1" > /sys/devices/system/cpu/sched_mc_power_savings
