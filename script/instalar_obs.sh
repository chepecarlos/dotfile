#!/bin/sh

rm -rf ~/.var/app/com.obsproject.Studio/config/obs-studio/plugins/obs-teleport
mkdir -p ~/.var/app/com.obsproject.Studio/config/obs-studio/plugins/obs-teleport/bin/64bit
cp $(dirname $0)/obs-teleport_0_7_0.so ~/.var/app/com.obsproject.Studio/config/obs-studio/plugins/obs-teleport/bin/64bit/obs-teleport.so
