#LOCAL_PATH is used to locate source files in the development tree.

#the macro my-dir provided by the build system, indicates the path of the current directory

LOCAL_PATH:=$(call my-dir)



#####################################################################

#            build libnflink                    #

#####################################################################

include $(CLEAR_VARS)

LOCAL_MODULE:=libnfnetlink

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES:=\

    src/iftable.c \

    src/rtnl.c \

    src/libnfnetlink.c

include $(BUILD_STATIC_LIBRARY)

#include $(BUILD_SHARED_LIBRARY)

