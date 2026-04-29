#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Use different feed sources that support HTTPS without auth
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default

# PassWall uses different repo - openwrt-passwall-packages
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall-packages.git' >>feeds.conf.default

# Disable release upload (fork doesn't have permission)
sed -i 's/UPLOAD_RELEASE: true/UPLOAD_RELEASE: false/' $GITHUB_WORKSPACE/.github/workflows/openwrt-builder.yml
