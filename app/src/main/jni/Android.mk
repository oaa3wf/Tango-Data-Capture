#
# Copyright 2014 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)
PROJECT_ROOT:= $(call my-dir)/../../../../..

include $(CLEAR_VARS)
OPENCV_INSTALL_MODULES :=   on
OPENCV_CAMERA_MODULES  :=   off
OPENCV_LIB_TYPE :=  STATIC
include /Users/oafolabi/Documents/code/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk
LOCAL_MODULE    := libhello_tango_jni_example
LOCAL_SHARED_LIBRARIES := tango_client_api
LOCAL_CFLAGS    := -Werror -std=c++11
LOCAL_SRC_FILES := tango_native.cc \
                   tango_handler.cc \
                   synchronized_queue.cc
LOCAL_C_INCLUDES := $(PROJECT_ROOT)/tango-gl/include \
                    $(PROJECT_ROOT)/third-party/glm/
LOCAL_C_INCLUDES += /Users/oafolabi/Documents/code/OpenCV-android-sdk/sdk/native/jni/include

LOCAL_LDLIBS    := -llog -lGLESv2 -L$(SYSROOT)/usr/lib -ldl
LOCAL_LDLIBS    += -lz
include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(PROJECT_ROOT))
$(call import-module,tango_client_api)
