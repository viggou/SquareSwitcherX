ARCHS = arm64
TARGET = iphone:clang:11.2:11.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SquareSwitcherXPrefs
SquareSwitcherXPrefs_FILES = SSXRootListController.m
SquareSwitcherXPrefs_INSTALL_PATH = /Library/PreferenceBundles
SquareSwitcherXPrefs_FRAMEWORKS = UIKit
SquareSwitcherXPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SquareSwitcherXPrefs.plist$(ECHO_END)
