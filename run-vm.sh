#!/usr/bin/env bash

set -euo pipefail

if [[ ! -f guix-system-vm-image-1.4.0.x86_64-linux.qcow2.bkp ]]; then
    cp -v \
    guix-system-vm-image-1.4.0.x86_64-linux.qcow2 \
    guix-system-vm-image-1.4.0.x86_64-linux.qcow2.bkp
fi

qemu-system-x86_64 \
    -nic user,model=virtio-net-pci \
    -enable-kvm -m 8192 -smp 4 \
    -device virtio-blk,drive=myhd \
    -drive if=none,file=guix-system-vm-image-1.4.0.x86_64-linux.qcow2,id=myhd \
    -nic user,model=virtio-net-pci,hostfwd=tcp::10022-:22
