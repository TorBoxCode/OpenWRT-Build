#!/bin/bash
git clone https://github.com/TorBoxCode/luci-app-eqos lede/package/luci-app-eqos
git clone https://github.com/TorBoxCode/luci-app-tencentddns lede/package/luci-app-tencentddns
git clone https://github.com/chandelures/openwrt-clash lede/package/openwrt-clash
git clone https://github.com/chandelures/luci-app-simple-clash lede/package/luci-app-simple-clash
#sed -i '$a\src-git helloworld https://github.com/fw876/helloworld' lede/feeds.conf.default
