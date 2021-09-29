#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/vc/lib

DEVICE_NAME="${AIRPIPLAY_NAME:="Air-Pi-Play@$HOSTNAME"}"
case $AIRPIPLAY_LATENCY_MODE in
  1) LATENCY="-l";;
  0) LATENCY="";;
esac

echo "Air-Pi-Play v$(cat VERSION) powered by UxPlay"

echo "Device is discoverable as ${DEVICE_NAME}"

uxplay -n $DEVICE_NAME
