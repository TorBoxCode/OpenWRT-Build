#!/bin/bash
sed -i 's/R21.1.18/R21.1.26/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/192.168.1.254/g' lede/package/base-files/files/bin/config_generate
#sed -i 's/kmod-r8169/kmod-r8168/g' lede/target/linux/rockchip/image/armv8.mk
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
cp -f All/Enable_1.8_2.2_GHz.patch lede/target/linux/rockchip/patches-5.4/Enable_1.8_2.2_GHz.patch
cp -f All/Show_CPU_big.LITTLE_FREQ lede/package/lean/autocore/files/arm/sbin/cpuinfo
cp -f All/CONFIG_R4S.ini lede/.config
git clone https://github.com/KFERMercer/luci-app-dockerman lede/package/lean/luci-app-dockerman
