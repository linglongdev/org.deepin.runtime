# disable install qtchooser
echo "Package: qtchooser" >$PREFIX/packages.list
# 安装依赖
bash ./install_dep linglong/sources "$PREFIX"
# 添加qmake配置
envsubst <qt6.conf >$PREFIX/lib/qt6/bin/qt6.conf
# 修复qmake问题
ln -sf /runtime/lib/qt6/libexec/moc /runtime/libexec/moc
ln -sf /runtime/lib/qt6/libexec/rcc /runtime/libexec/rcc
# 设置环境变量
mkdir -p $PREFIX/etc
cp profile $PREFIX/etc/
# 删除字体文件
rm -r $PREFIX/share/fonts
