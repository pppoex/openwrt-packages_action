#!/bin/bash

svn co https://github.com/rufengsuixing/luci-app-syncdial # 宽带多播
svn co https://github.com/xiaorouji/openwrt-passwall passwalldep -b packages # passwall依赖
svn co https://github.com/xiaorouji/openwrt-passwall -b luci # passwall
svn co https://github.com/siwind/luci-app-wolplus # 网络唤醒++
svn co https://github.com/sirpdboy/luci-app-advanced # 高级设置
svn co https://github.com/sirpdboy/luci-app-ddns-go # DDNS-GO
svn co https://github.com/kiddin9/luci-app-wizard # 快捷设置
svn co https://github.com/jerrykuku/luci-app-argon-config # Argon主题设置
svn co https://github.com/jerrykuku/luci-theme-argon # Argon主题
svn co https://github.com/openwrt-xiaomi/luci-app-cpufreq # CPU性能调节
svn co https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic # 解锁网易云
svn co https://github.com/f8q8/luci-app-autoreboot # 自动重启

rm -rf .svn
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
rm -rf .github
rm LICENSE
mv LICENSE.packages LICENSE
exit 0
