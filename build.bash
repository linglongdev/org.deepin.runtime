# disable install qtchooser
echo "Package: qtchooser" >$PREFIX/packages.list
# 安装依赖
bash ./install_dep linglong/sources "$PREFIX"
# 添加qmake配置
envsubst <qt6.conf >$PREFIX/lib/qt6/bin/qt6.conf
# 设置环境变量
mkdir -p $PREFIX/etc
cp profile $PREFIX/etc/
# 删除字体文件
rm -r $PREFIX/share/fonts
