#!/usr/bin/bash
PI_IMAGE=raspbian.img
PI_CPU=arm1176
PI_MEM=256
PI_KERNEL=kernel-qemu

qemu-system-arm -kernel $PI_KERNEL -cpu $PI_CPU -m $PI_MEM -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw init=/bin/bash" -hda $PI_IMAGE 
