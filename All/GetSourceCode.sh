#!/bin/bash
git clone https://github.com/TorBoxCode/luci-app-eqos lede/package/luci-app-eqos
git clone https://github.com/TorBoxCode/luci-app-tencentddns lede/package/luci-app-tencentddns
git clone https://github.com/vernesong/OpenClash lede/package/OpenClash
#sed -i '$a\src-git helloworld https://github.com/fw876/helloworld' lede/feeds.conf.default
