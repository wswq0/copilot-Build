#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
# 这个仓库的代码代码更新比较频繁
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# 这个仓库的代码是不怎么更新的
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default

# 大插件包,包含了上面的“kenzo”和“small”
# echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default

# echo 'src-git kenzo https://github.com/1774293824/openwrt-packages' >>feeds.conf.default

# echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> "feeds.conf.default"

# echo 'src-git 1774 https://github.com/1774293824/openwrt-packages' >>feeds.conf.default
