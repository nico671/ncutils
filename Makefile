THEOS_DEVICE_IP = 192.168.0.11
TARGET := iphone:clang:latest:14.0
export DEBUG = 0
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.4.sdk/


LIBRARY_NAME = NCUtils

NCUtils_FILES = MarqueeLabel.m  NCColorPickerCell.m NCImagePickerCell.m NCColorPickerUtilities.m SFSymbolsCell.m
NCUtils_CFLAGS = -fobjc-arc
NCUtils_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore PhotosUI
NCUtils_PRIVATE_FRAMEWORKS = Preferences
NCUtils_INSTALL_PATH = /usr/local/lib
include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/library.mk
