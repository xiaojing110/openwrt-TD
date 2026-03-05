#!/bin/bash
#闭源使用
#echo "修改 feeds.conf.default..."
##默认已增加
#echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
#echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default

echo "修改 连接数限制"
echo "net.netfilter.nf_conntrack_max = 655535" >> package/base-files/files/etc/sysctl.conf

##下面内容仅在需要时启用，目前是旧版本后续配置为diy2.sh
##自发布时最新版
echo "更新sing-box"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 1.13.1/' feeds/packages/net/sing-box/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 62624d4c11e318606b0dc181d1da4b2b4d7e110f67c6fb15e1ba14bb88377f69|' feeds/packages/net/sing-box/Makefile

# 修改 xray-core 包中的 PKG_VERSION 和 PKG_HASH
echo "更新xray-core"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 26.2.6/' feeds/packages/net/xray-core/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 a41f170a03fa25d9d39f23f344540b02336a5c893d97b1b837b9477f4b35bc7f|' feeds/packages/net/xray-core/Makefile

# 修改 intel-microcode 包中的 PKG_VERSION 和 PKG_HASH
echo "更新intel-microcode"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 20260210/' package/firmware/intel-microcode/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 4d8654f4f6c7d14f496bcfcb097522d2825282eb8ea27605d882092371d66a76|' package/firmware/intel-microcode/Makefile

# 修改 v2rayA 包中的 PKG_VERSION 和 PKG_HASH
echo "更新v2raya"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 2.2.7.5/' feeds/packages/net/v2raya/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 d0daccace51572d730fb710f7df190beed47d51ec1091d2fba38719b9417b385|' feeds/packages/net/v2raya/Makefile

# 修改 haproxy 包中的 PKG_VERSION 和 PKG_HASH ##暂时调式用
#echo "更新haproxy"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
#sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 3.2.12/' feeds/packages/net/haproxy/Makefile
#sed -i -E 's/(PKG_SOURCE_URL:=)[^ ]+/\1 https://www.haproxy.org/download/3.2/src/' feeds/packages/net/haproxy/Makefile
#sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 310b424e60db2f3990206ca7c81293586842cb628e7dfad572c7146ae9e95a91|' feeds/packages/net/haproxy/Makefile

# 修改 tools工具7z 包中的 PKG_VERSION 和 PKG_HASH
echo "更新7z"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 26.00/' tools/7z/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 3e596155744af055a77fc433c703d54e3ea9212246287b5b1436a6beac060f16|' tools/7z/Makefile

# 修改 tools工具链中fakeroot 包中的 PKG_VERSION 和 PKG_HASH
echo "更新fakeroot"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 1.37.1.2/' tools/fakeroot/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 959496928c8a676ec8377f665ff6a19a707bfad693325f9cc4a4126642f53224|' tools/fakeroot/Makefile

# 自动识别并替换 LINUX_VERSION 和 LINUX_KERNEL_HASH
#echo "更新 kernel-6.6内核"
#sed -i 's|LINUX_VERSION-6.6 = .*|LINUX_VERSION-6.6 = .89|' include/kernel-6.6
#sed -i 's|LINUX_KERNEL_HASH-6.6.*|LINUX_KERNEL_HASH-6.6.89 = c21af7d36068e4ac0704c242eac8459212e6bf4a5d09df941b9b4d17dc1eba00|' include/kernel-6.6

#6.12 内核
#echo "更新 kernel-6.12内核"
#sed -i 's|LINUX_VERSION-6.12 = .*|LINUX_VERSION-6.12 = .75|' include/kernel-6.12
#sed -i 's|LINUX_KERNEL_HASH-6.12.*|LINUX_KERNEL_HASH-6.12.75 = 06ee7927556ff1aa8810c4826501b0fdb169ebdc180644b882cf7c143ac1c177|' include/kernel-6.12

# 修改 linux-firmware 包中的 PKG_VERSION 和 PKG_HASH
echo "更新linux-firmware"
# 自动识别并替换 PKG_VERSION 和 PKG_HASH
sed -i -E 's/(PKG_VERSION:=)[^ ]+/\1 20260221/' package/firmware/linux-firmware/Makefile
sed -i -E 's|(PKG_HASH:=)[^ ]+|\1 bd19acc4c1a02548e09d3df67f987fe6e378df735bab138c1d9e917962056d94|' package/firmware/linux-firmware/Makefile

# 修改 linux-firmware Makefile 中的 PKG_VERSION 和 PKG_HASH
#echo "更新linux-firmware"
#sed -i 's/PKG_VERSION:=20250509/PKG_VERSION:=20250808/' package/firmware/linux-firmware/Makefile
#sed -i 's/PKG_HASH:=f2c60d66f226a28130cb5643e6e544d3229673460e127c91ba03f1080cbd703e/PKG_HASH:=c029551b45a15926c9d7a5df1a0b540044064f19157c57fc11d91fd0aade837f/' package/firmware/linux-firmware/Makefile

# 覆盖 chinadns-ng Makefile（来自 kenzok8/small，通常版本更新更快，支持预编译二进制）
echo "覆盖 chinadns-ng Makefile 为 kenzok8/small 版本"
curl -s -o feeds/packages/net/chinadns-ng/Makefile https://raw.githubusercontent.com/kenzok8/small/master/chinadns-ng/Makefile
# 可选：显示版本确认（2025-08-09 是你拉取时的版本，未来可能更新）
grep "PKG_VERSION:=" feeds/packages/net/chinadns-ng/Makefile || echo "chinadns-ng Makefile 更新失败"

# 覆盖 v2ray-geodata Makefile（来自 xiaojing110/openwrt-TD/dev 分支，主要是更新的 geoip/geosite 下载链接和哈希）
echo "覆盖 v2ray-geodata Makefile 为 xiaojing110/openwrt-TD 版本"
curl -s -o feeds/packages/net/v2ray-geodata/Makefile https://raw.githubusercontent.com/xiaojing110/openwrt-TD/dev/Makefile
# 可选：显示版本信息确认
grep "GEOIP_VER:=" feeds/packages/net/v2ray-geodata/Makefile || echo "v2ray-geodata Makefile 更新失败"

# 覆盖 geoview Makefile（来自 kenzok8/small，通常版本更新更快，支持预编译二进制）
echo "覆盖 geoview Makefile 为 kenzok8/small 版本"
curl -s -o feeds/packages/net/geoview/Makefile https://raw.githubusercontent.com/kenzok8/small/master/geoview/Makefile
# 可选：显示版本确认（0.2.5 是你拉取时的版本，未来可能更新）
grep "PKG_VERSION:=" feeds/packages/net/geoview/Makefile || echo "geoview Makefile 更新失败"

# ------------------ 替换 luci-app-passwall ------------------
echo "开始替换 luci-app-passwall 为 Openwrt-Passwall 官方版本..."

# 先删除旧的（如果存在）
if [ -d "feeds/luci/applications/luci-app-passwall" ]; then
    echo "删除旧的 luci-app-passwall 目录..."
    rm -rf feeds/luci/applications/luci-app-passwall
fi

# 进入 feeds/luci/applications
cd feeds/luci/applications || { echo "错误：无法进入 feeds/luci/applications"; exit 1; }

# 克隆（浅克隆 + 单分支，节省时间）
echo "克隆 Openwrt-Passwall/openwrt-passwall 仓库（浅克隆）..."
git clone --depth=1 --single-branch --branch main \
    https://github.com/Openwrt-Passwall/openwrt-passwall.git temp-passwall || {
    echo "克隆失败，请检查网络或仓库是否可用"; exit 1;
}

cd temp-passwall || { echo "进入 temp-passwall 失败"; exit 1; }

# 启用 sparse-checkout 并只拉取 luci-app-passwall 目录
echo "启用 sparse-checkout 并设置只拉取 luci-app-passwall..."
git sparse-checkout init --cone
git sparse-checkout set luci-app-passwall

# 移动到正确位置
echo "移动 luci-app-passwall 到 feeds/luci/applications..."
mv luci-app-passwall ../ || { echo "移动失败"; exit 1; }

# 清理临时目录
cd ..
rm -rf temp-passwall

echo "luci-app-passwall 替换完成！"

# 可选：显示版本信息，便于确认
if [ -f "luci-app-passwall/Makefile" ]; then
    echo "替换后的版本信息："
    grep -E "PKG_NAME|PKG_VERSION" luci-app-passwall/Makefile | head -n 4 || echo "未找到版本信息"
else
    echo "警告：Makefile 不存在，替换可能失败！"
fi

cd - >/dev/null  # 返回原来的目录
echo "passwall 替换流程结束。"
