#!/bin/bash
case "$1/$2" in
  pre/*)
    logger "nvme-fix: disabling d3cold for all PCI devices"
    for f in /sys/bus/pci/devices/*/d3cold_allowed; do
      echo 0 > "$f" 2>/dev/null
    done
    ;;
  post/*)
    logger "nvme-fix: post-resume, done"
    ;;
esac
