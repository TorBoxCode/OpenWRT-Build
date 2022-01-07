#!/bin/bash
sed -i 's/RR22.1.1/R22.1.6/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
#cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.4/Enable_CPUOP.patch
#cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.10/Enable_CPUOP.patch
sed -i 's/5.4/5.10/g' lede/target/linux/rockchip/Makefile
