$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/leaf/leaf5/device_leaf5.mk)

PRODUCT_NAME := twrp_leaf5
PRODUCT_DEVICE := leaf5
PRODUCT_BRAND := leaf
PRODUCT_MODEL := Leaf5
PRODUCT_MANUFACTURER := leaf
