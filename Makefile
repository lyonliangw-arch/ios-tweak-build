TARGET = iphone:clang:15.0:13.0  # 目标iOS版本（需 ≤ 设备系统版本）
ARCHS = arm64  # 仅支持iPhone 7P的ARM64架构
INSTALL_TARGET_PROCESSES = CameraUI  # 注入相机进程（可改为SpringBoard全局Hook）
THEOS ?= $(HOME)/theos

TWEAK_NAME = VirtualCamera  # 插件名称（自定义）
VirtualCamera_FILES = Tweak.xm  # 核心代码文件
VirtualCamera_CFLAGS = -fobjc-arc  # 启用ARC（代码用了ARC才需要）

include $(THEOS_MAKE_PATH)/tweak.mk
