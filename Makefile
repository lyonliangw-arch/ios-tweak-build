# 目标系统：iOS 15.0（必须与你的设备系统版本一致）
TARGET = iphone:clang:15.0:15.0
# 架构：支持iPhone 6s及以上（iOS 15运行的设备均为64位）
ARCHS = arm64 arm64e
# 注入的目标进程（以SpringBoard为例，全局生效，可改为你的目标APP如CameraUI）
INSTALL_TARGET_PROCESSES = SpringBoard

# 插件名称（需与control文件一致）
TWEAK_NAME = VirtualCamera

# 核心代码文件（你的Tweak.xm）
VirtualCamera_FILES = Tweak.xm

# 启用ARC内存管理（现代Objective-C必备）
VirtualCamera_CFLAGS = -fobjc-arc

# 引用Theos的编译规则（自动处理依赖，包括ElleKit/substrate）
include $(THEOS)/makefiles/tweak.mk

# 安装后重启目标进程（确保插件生效）
after-install::
	install.exec "killall -9 SpringBoard"
