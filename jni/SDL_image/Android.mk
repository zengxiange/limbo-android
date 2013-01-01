LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_image

LOCAL_CFLAGS := -I$(LOCAL_PATH)/../jpeg -I$(LOCAL_PATH)/../png -I$(LOCAL_PATH)/../SDL/include \
	-DLOAD_JPG -DLOAD_PNG -DLOAD_BMP -DLOAD_GIF -DLOAD_LBM \
	-DLOAD_PCX -DLOAD_PNM -DLOAD_TGA -DLOAD_XCF -DLOAD_XPM \
	-DLOAD_XV

LOCAL_SRC_FILES := $(notdir $(filter-out %/showimage.c, $(wildcard $(LOCAL_PATH)/*.c)))

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_STATIC_LIBRARIES := png jpeg

LOCAL_LDLIBS := -lz -llog

include $(BUILD_SHARED_LIBRARY)