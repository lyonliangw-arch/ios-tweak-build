# 目标平台：iOS 版本需 <= 你的设备系统（如 15.0）
TARGET = iphone:clang:15.0:13.0
# 设备架构（iPhone 7P 为 arm64）
ARCHS = arm64
# 要注入的进程（如相机APP：CameraUI）
INSTALL_TARGET_PROCESSES = CameraUI

# 插件名称（自定义，如 VirtualCamera）
TWEAK_NAME = VirtualCamera
# 核心代码文件（你的 Tweak.xm）
VirtualCamera_FILES = Tweak.xm
# 启用 ARC 内存管理（代码用了 ARC 则保留）
VirtualCamera_CFLAGS = -fobjc-arc

# 关键：通过 THEOS 变量引用 tweak.mk
include $(THEOS)/makefiles/tweak.mk
