#!/system/bin/sh

mount -o rw,remount /system
chmod -R 700 /system/su.d
mount -o ro,remount /system
