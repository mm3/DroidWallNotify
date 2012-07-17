#LOCAL_PATH is used to locate source files in the development tree.

#the macro my-dir provided by the build system, indicates the path of the current directory

LOCAL_PATH:=$(call my-dir)



#####################################################################

#            build our code                    #

#####################################################################

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libnfnetlink-1.0.0/include \

    $(LOCAL_PATH)/../libnetfilter_queue-1.0.1/include

LOCAL_MODULE:=droidwallnotify

LOCAL_SRC_FILES:=droidwallnotify.c

LOCAL_STATIC_LIBRARIES:=libnetfilter_queue

LOCAL_LDLIBS:=-llog -lm

#include $(BUILD_SHARED_LIBRARY)

include $(BUILD_EXECUTABLE)
