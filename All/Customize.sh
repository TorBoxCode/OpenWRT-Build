#!/bin/bash
sed -i 's/R22.3.13/R22.3.18/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
cp -f Theme/nlogo.png lede/feeds/luci/themes/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/feeds/luci/themes/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
rm -rf lede/target/linux/rockchip/patches-5.4/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
rm -rf lede/target/linux/rockchip/patches-5.10/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
rm -rf lede/target/linux/rockchip/patches-5.15/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.4/Enable_CPUOP.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.10/Enable_CPUOP.patch
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.15/Enable_CPUOP.patch
#sed -i 's/5.15/5.4/g' lede/target/linux/rockchip/Makefile
