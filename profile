#!/bin/bash
export CMAKE_PREFIX_PATH=/usr:/runtime:/opt/apps/$LINGLONG_APPID/files

# 读取当前base的架构
tripletList=$(cat /etc/linglong-triplet-list)
for triplet in $tripletList; do
    export QT_QPA_PLATFORM_PLUGIN_PATH="/runtime/lib/$triplet/qt6/plugins/platforms"
    export QT_PLUGIN_PATH="/runtime/lib/$triplet/qt6/plugins"
    export QML_IMPORT_PATH="/runtime/lib/$triplet/qt6/qml:/opt/apps/$LINGLONG_APPID/files/lib/$triplet/qt6/qml"
    break
done

export QTWEBENGINEPROCESS_PATH=/runtime/lib/qt6/libexec/QtWebEngineProcess
export QTWEBENGINE_RESOURCES_PATH=/runtime/share/qt6/resources
export QTWEBENGINE_LOCALES_PATH=/runtime/share/qt6/translations/qtwebengine_locales


