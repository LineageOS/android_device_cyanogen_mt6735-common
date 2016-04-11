# Copyright (C) 2016 Cyanogenmod
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

LOCAL_PATH := $(call my-dir)

ifeq ($(MTKPATH),)

include $(CLEAR_VARS)
LOCAL_MODULE = libwifi-hal-mt66xx
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_PATH =
LOCAL_MODULE_RELATIVE_PATH =
LOCAL_MODULE_SUFFIX = .a
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = arm64/libwifi-hal-mt66xx.a
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libwifi-hal-mt66xx
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_PATH =
LOCAL_MODULE_RELATIVE_PATH =
LOCAL_MODULE_SUFFIX = .a
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = arm/libwifi-hal-mt66xx.a
include $(BUILD_PREBUILT)

endif
