#!/bin/bash
sed -i 's/R20.12.12/R20.12.24/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/192.168.5.1/g' lede/package/base-files/files/bin/config_generate
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
cp -f All/Show_big.LITTLE_CPU_Freq lede/package/lean/autocore/files/arm/sbin/cpuinfo
cp -f All/RK3399_1.8_2.2_GHz.patch lede/target/linux/rockchip/patches-5.4/RK3399_1.8_2.2_GHz.patch
cp -f All/CONFIG_R4S.ini lede/.config
