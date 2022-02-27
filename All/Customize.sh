#!/bin/bash
sed -i 's/R22.2.2/R22.2.26/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
rm -rf lede/target/linux/rockchip/patches-5.4/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
rm -rf lede/target/linux/rockchip/patches-5.10/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
rm -rf lede/target/linux/rockchip/patches-5.15/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.4/Enable_CPUOP.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.10/Enable_CPUOP.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.15/Enable_CPUOP.patch
sed -i 's/5.4/5.15/g' lede/target/linux/rockchip/Makefile
