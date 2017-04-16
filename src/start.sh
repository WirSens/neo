#!/bin/sh
echo "Running NeoCortec gateway software"
/bin/bash -c /usr/src/app/NeoCortecGateway -- -C uart=/dev/ttyUSB0,ctsSource=ioctl