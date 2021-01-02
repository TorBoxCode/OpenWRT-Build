#!/bin/bash
sed -i 's/R20.12.12/R21.1.2/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/192.168.5.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/Nps 内网穿透/nps/g' lede/package/lean/luci-app-nps/po/zh-cn/nps.po
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
cp -f All/Enable_1.8_2.2_GHz.patch lede/target/linux/rockchip/patches-5.4/Enable_1.8_2.2_GHz.patch
cp -f All/Show_CPU_big.LITTLE_FREQ lede/package/lean/autocore/files/arm/sbin/cpuinfo
cp -f All/CONFIG_R4S.ini lede/.config
git apply All/Rockchip_Driver_R4S.patch
cd lede/package/lean/
git clone https://github.com/KFERMercer/luci-app-dockerman
