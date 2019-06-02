LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := afptool.c

LOCAL_MODULE := rk_afptool
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := img_maker.c

LOCAL_SHARED_LIBRARIES := libcrypto-host

LOCAL_MODULE := rk_img_maker
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := img_unpack.c

LOCAL_SHARED_LIBRARIES := libcrypto-host

LOCAL_MODULE := rk_img_unpack
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkbootimg.c

LOCAL_SHARED_LIBRARIES := libcrypto-host

LOCAL_MODULE := rk_mkbootimg
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := unmkbootimg.c

LOCAL_SHARED_LIBRARIES := libcrypto-host

LOCAL_MODULE := rk_unmkbootimg
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkkrnlimg.c

LOCAL_MODULE := rk_mkkrnlimg
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := resource_tool.c

LOCAL_MODULE := rk_resource_tool
LOCAL_MODULE_HOST_OS := linux
include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkcpiogz

LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE := rk_mkcpiogz
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := unmkcpiogz

LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE := rk_unmkcpiogz
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkrootfs

LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE := rk_mkrootfs
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkupdate

LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE := rk_mkupdate
include $(BUILD_PREBUILT)
