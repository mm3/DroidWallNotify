#LOCAL_PATH is used to locate source files in the development tree.

#the macro my-dir provided by the build system, indicates the path of the current directory

LOCAL_PATH:=$(call my-dir)

#####################################################################

#            build libnetfilter_queue            #

#####################################################################

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libnfnetlink-1.0.0/include \

    $(LOCAL_PATH)/include

LOCAL_MODULE:=libnetfilter_queue

LOCAL_SRC_FILES:=src/libnetfilter_queue.c

LOCAL_STATIC_LIBRARIES:=libnfnetlink

include $(BUILD_STATIC_LIBRARY)

#include $(BUILD_SHARED_LIBRARY)


