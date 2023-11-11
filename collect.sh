#!/bin/bash
cd ~/rom

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 10G
ccache -z
$lunch
$make -j8 &
sleep 80m
kill %1
