LOCAL_PATH:= $(call my-dir)

define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef

$(call add-rootdir-targets, \
    fstab.mt6735 \
    init.mt6735.rc \
    init.mt6735.modem.rc \
    ueventd.mt6735.rc)
