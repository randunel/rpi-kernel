#!/bin/bash
KERNEL='kernel8'
CONFIG_LOCALVERSION='-mihai-with-fou-tunnel'

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- INSTALL_MOD_PATH=/media/mihai/rootfs modules_install
cp /media/mihai/bootfs/$KERNEL.img /media/mihai/bootfs/$KERNEL-backup.img
cp arch/arm64/boot/Image /media/mihai/bootfs/$KERNEL.img
cp arch/arm64/boot/dts/broadcom/*.dtb /media/mihai/bootfs/
cp arch/arm64/boot/dts/overlays/*.dtb* /media/mihai/bootfs/overlays/
cp arch/arm64/boot/dts/overlays/README /media/mihai/bootfs/overlays/
