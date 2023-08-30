ifeq ($(TARGET_USES_Q_DISPLAY_STACK),true)
    ifeq ($(TARGET_BOARD_PLATFORM),msm8937)
        $(call inherit-product, vendor/xiaomi/mithorium-common-graphics/olive-Q/extract-vendor.mk)
    else ifeq ($(TARGET_BOARD_PLATFORM),msm8953)
        $(call inherit-product, vendor/xiaomi/mithorium-common-graphics/onc-Q/extract-vendor.mk)
    endif
else
    $(call inherit-product, vendor/xiaomi/mithorium-common-graphics/LA.UM.9.6.3.r1-06200-89xx.0/extract-vendor.mk)
endif
