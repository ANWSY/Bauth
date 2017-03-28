#!/bin/sh

# 定义函数


# 确定目录与git仓库
# if [[ $PWD =~ '/alidata/www' ]]
# then
#     echo "包含"
# else
#     echo "不包含"
# fi
cd /alidata/www/demo.bauth.com
git pull

# GIT webhook更的git版本文件， 不用mysql等db，用file
# if [ !-f $configFile ]
# then
# 	echo '配置文件不存在'
# if

# 执行fetch 和 merge 如果有冲突发警告邮件并且把仓库回复到上个版本