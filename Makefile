THEOS_DEVICE_IP = 192.168.0.11
TARGET := iphone:clang:latest:14.0
export DEBUG = 0
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.4.sdk/
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = NCUtils

NCUtils_FILES = MarqueeLabel.m  NCColorPicker.m  NCColorPickerUtilities.m SFSymbolsCell.m
NCUtils_CFLAGS = -fobjc-arc
NCUtils_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
NCUtils_PRIVATE_FRAMEWORKS = Preferences
NCUtils_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
