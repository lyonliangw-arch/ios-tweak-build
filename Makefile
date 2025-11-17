# 目标设备配置（适配 iPhone 7P，iOS 15 为例，根据实际设备修改）
TARGET = iphone:clang:15.0:13.0  # 目标 iOS 版本（<= 设备系统版本）
ARCHS = arm64                    # 仅支持 64 位架构（iPhone 7P 适用）
INSTALL_TARGET_PROCESSES = CameraUI  # 注入相机进程（可改为 SpringBoard 全局生效）

# 插件名称（自定义，需与 control 文件一致）
TWEAK_NAME = VirtualCamera

# 核心代码文件（你的 Tweak.xm）
VirtualCamera_FILES = Tweak.xm

# 启用 ARC 内存管理（如果代码中使用了 ARC，必须添加）
VirtualCamera_CFLAGS = -fobjc-arc

# 关键：正确引用 Theos 的 tweak.mk（通过 THEOS 变量定位）
include $(THEOS)/makefiles/tweak.mk
