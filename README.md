# openwrt-TD
自动编译openwrt-可用于immortalwrt，lede，原版openwrt等

在x86目录下上传本地编译的.config文件，确保所需插件等源代码中有，或者修改yml文件配置

请确保在config配置编译通过，本地无法通过，那么actions也无法通过

immortalwrt的编译请选择你自己的config配置，默认仓库配置为LEDE固件

支持远程调用diy.sh,适配更多玩法

immortalwrt固件使用默认自定义diy可能不会生效,请另外生成一份适配immortalwrt的diy配置文件

此编译完全匹配本地编译方式方法

仅限自用，还在完善
<img width="308" height="428" alt="image" src="https://github.com/user-attachments/assets/0eb18689-33bc-43ee-a1ae-b20bfab63237" />

使用方法：
ip可选择自定义默认10.0.0.1

rax3000m配置:https://raw.githubusercontent.com/xiaojing110/openwrt-TD/refs/heads/main/rax3000m/.config #开源固件

闭源:https://raw.githubusercontent.com/xiaojing110/openwrt-TD/refs/heads/main/%E9%97%AD%E6%BA%90/.config

X86默认(无需或者用自己的)：https://raw.githubusercontent.com/xiaojing110/openwrt-TD/refs/heads/main/X86/.config

默认diy：https://raw.githubusercontent.com/xiaojing110/openwrt-TD/refs/heads/main/diy.sh

红米AX6000配置：https://raw.githubusercontent.com/xiaojing110/openwrt-TD/refs/heads/dev/hmax6000/.config #开源固件

待完成功能
可能会开启ssh在线构建

觉得好用可以点点star
源码来自:
lede:https://github.com/coolsnowwolf/lede
immortalwrt:https://github.com/immortalwrt/immortalwrt
