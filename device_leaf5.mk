$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

PRODUCT_DEVICE := leaf5
PRODUCT_NAME := twrp_leaf5
PRODUCT_BRAND := leaf
PRODUCT_MODEL := Leaf5
PRODUCT_MANUFACTURER := leaf

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# 复制按键映射文件
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/sf-keys.kl:system/usr/keylayout/sf-keys.kl
