#!/bin/bash
# Lede has PassWall built-in, no extra feeds needed
# Just ensure the feeds are updated
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default 2>/dev/null || true
