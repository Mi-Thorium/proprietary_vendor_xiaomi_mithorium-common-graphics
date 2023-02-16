ifeq ($(TARGET_USES_Q_DISPLAY_STACK),true)
    ifeq ($(TARGET_BOARD_PLATFORM),msm8937)
        PRODUCT_COPY_FILES += \
            $(call find-copy-subdir-files,*,vendor/xiaomi/mithorium-common-graphics/olive-Q/vendor/,$(TARGET_COPY_OUT_VENDOR)/)
    else ifeq ($(TARGET_BOARD_PLATFORM),msm8953)
        PRODUCT_COPY_FILES += \
            $(call find-copy-subdir-files,*,vendor/xiaomi/mithorium-common-graphics/daisy-Q/vendor/,$(TARGET_COPY_OUT_VENDOR)/)
    endif
else
    PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,vendor/xiaomi/mithorium-common-graphics/LA.UM.9.6.3.r1-06200-89xx.0/vendor/,$(TARGET_COPY_OUT_VENDOR)/)
endif