#!/bin/bash
qemu-system-x86_64 -boot order=d -drive file=a.img,format=raw -enable-kvm -m 2G
