#!/system/bin/sh

mount -o rw,remount /system
sed -i '/AUDIO_DEVICE_OUT_SPEAKER|AUDIO_DEVICE_OUT_EARPIECE|AUDIO_DEVICE_OUT_WIRED_HEADSET|AUDIO_DEVICE_OUT_WIRED_HEADPHONE|AUDIO_DEVICE_OUT_ALL_SCO|AUDIO_DEVICE_OUT_AUX_DIGITAL/c\         devices AUDIO_DEVICE_OUT_EARPIECE' /system/etc/audio_policy.conf
mount -o ro,remount /system
