#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i "/helloworld/d" "feeds.conf.default"

# Add a feed source
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# Remove kernel version's MD5
sed -i 's/~$(LINUX_VERMAGIC)-/-/g' include/kernel.mk
sed -i 's/~$(LINUX_VERMAGIC)-/-/g' package/kernel/linux/Makefile

# Add compilation date in OpenWrt firmware version
date=`date +%Y.%m.%d`
sed -i -e "/\(# \)\?REVISION:=/c\REVISION:=$date" -e '/VERSION_CODE:=/c\VERSION_CODE:=$(REVISION)' include/version.mk
