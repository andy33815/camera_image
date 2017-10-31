LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng

LOCAL_CERTIFICATE := platform

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v7-appcompat
    
 LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \
    frameworks/support/v7/appcompat/res
    
LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v7.appcompat

LOCAL_SRC_FILES := $(call all-java-files-under,src)

#LOCAL_JAVA_LIBRARIES := telephony-common 

LOCAL_PACKAGE_NAME := otgtest

include $(BUILD_PACKAGE)

