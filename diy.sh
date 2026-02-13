#!/bin/bash

echo "修改 feeds.conf.default..."
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default

##下面内容仅在需要时启用，目前是旧版本后续配置为diy2.sh  暂时不要启用
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
# sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 1.11.15/' feeds/packages/net/sing-box/Makefile
# sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 97d58dd873d7cf9b5e4b4aca5516568f3b2e6f5c3dbc93241c82fff5e4a609fd|' feeds/packages/net/sing-box/Makefile

# 修改 xray-core 包中的 PKG_VERSION 和 PKG_HASH
#echo "更新xray-core"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
#sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 25.3.31/' feeds/packages/net/xray-core/Makefile
#sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 681a4546b7c318e92243dfcea2fc3229714cb4e7a570dfcf73e935eb13c6078e|' feeds/packages/net/xray-core/Makefile

# 自动识别并替换 LINUX_VERSION 和 LINUX_KERNEL_HASH
#echo "更新 kernel-6.6内核"
#sed -i 's|LINUX_VERSION-6.6 = .*|LINUX_VERSION-6.6 = .89|' include/kernel-6.6
#sed -i 's|LINUX_KERNEL_HASH-6.6.*|LINUX_KERNEL_HASH-6.6.89 = c21af7d36068e4ac0704c242eac8459212e6bf4a5d09df941b9b4d17dc1eba00|' include/kernel-6.6

#6.12 内核
# echo "更新 kernel-6.12内核"
# sed -i 's|LINUX_VERSION-6.12 = .*|LINUX_VERSION-6.12 = .41|' include/kernel-6.12
# sed -i 's|LINUX_KERNEL_HASH-6.12.*|LINUX_KERNEL_HASH-6.12.41 = 6b19a3ae99423de2416964d67251d745910277af258b4c4c63e88fd87dbf0e27|' include/kernel-6.12

# 修改 linux-firmware Makefile 中的 PKG_VERSION 和 PKG_HASH
#echo "更新linux-firmware"
#sed -i 's/PKG_VERSION:=20250509/PKG_VERSION:=20250808/' package/firmware/linux-firmware/Makefile
#sed -i 's/PKG_HASH:=f2c60d66f226a28130cb5643e6e544d3229673460e127c91ba03f1080cbd703e/PKG_HASH:=c029551b45a15926c9d7a5df1a0b540044064f19157c57fc11d91fd0aade837f/' package/firmware/linux-firmware/Makefile
