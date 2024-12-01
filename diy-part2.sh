#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify hostname
# sed -i 's/OpenWrt/RAX3000M/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-edge/g' feeds/luci/collections/luci-light/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-edge/g' feeds/luci/collections/luci-nginx/Makefile

# Nginx use http in lan
sed -i 's/443 ssl default_server/80/g' feeds/packages/net/nginx-util/files/nginx.config
sed -i '/uci_manage_ssl/d' feeds/packages/net/nginx-util/files/nginx.config
sed -i '/ssl_certificate/d' feeds/packages/net/nginx-util/files/nginx.config
sed -i '/ssl_session/d' feeds/packages/net/nginx-util/files/nginx.config
