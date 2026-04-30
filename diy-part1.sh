#!/bin/bash
# Add PassWall feed for Lede
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >> feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default
