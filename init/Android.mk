ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_wt88047)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := init_msm.c init_wt88047.c
LOCAL_MODULE := libinit_wt88047
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall
LOCAL_STATIC_LIBRARIES := liblog libcutils
LOCAL_SRC_FILES := memcheck.c
LOCAL_MODULE := memcheck
include $(BUILD_EXECUTABLE)

endif
