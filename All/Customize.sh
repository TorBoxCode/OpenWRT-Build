#!/bin/bash
sed -i 's/R21.6.14/R21.6.15/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
rm -rf lede/target/linux/rockchip/patches-5.10/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.10/Enable_CPUOP.patch
cp -f All/Enable_big.LITTLE_DU.info lede/package/lean/autocore/files/arm/sbin/cpuinfo
