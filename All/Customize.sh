#!/bin/bash
sed -i 's/R22.12.1/R22.12.8/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/PADDING=1//g' lede/target/linux/rockchip/image/Makefile
sed -i 's/5.15/6.0/g' lede/target/linux/rockchip/Makefile
cp -f Theme/nlogo.png lede/feeds/luci/themes/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/feeds/luci/themes/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
