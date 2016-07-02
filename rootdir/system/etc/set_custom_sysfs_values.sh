#!/system/bin/sh

### Internal SD read ahead
MMC=`ls -d /sys/block/mmcblk*`
for i in $MMC; do
	if [ -e $i/bdi/read_ahead_kb ]; then
		echo "512" > $i/bdi/read_ahead_kb
	fi;
done

### Virtual SD read ahead
VD=`ls -d /sys/devices/virtual/bdi/*`
for i in $VD; do
	echo "512" > $i/read_ahead_kb;
done

### External SD read ahead
echo "4096" > /sys/block/mmcblk1/bdi/read_ahead_kb
