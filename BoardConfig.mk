DEVICE_PATH := device/leaf/leaf5

# ========== 架构配置（骁龙 765G/lito）==========
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo475

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# ========== 内核配置 ==========
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=0 loop.max_part=7 cgroup.memory=nokmem,nosocket reboot=panic_warm kptr_restrict=2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_MKBOOTIMG_ARGS := --header_version 2 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# DTBO 配置
BOARD_INCLUDE_RECOVERY_DTBO := false
#BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# ========== 分区配置（物理 A/B + 动态分区）==========
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    system \
    vendor \
    product \
    system_ext \
    odm \
    vbmeta_system \
    dtbo

# 动态分区（Super）- 6GB
BOARD_SUPER_PARTITION_SIZE := 6442450944
BOARD_SUPER_PARTITION_GROUPS := qcom_dynamic_partitions
BOARD_QCOM_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_QCOM_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm

# 分区大小（基于 GPT 表）
BOARD_BOOTIMAGE_PARTITION_SIZE := 104857600      # 100MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600  # 100MB
BOARD_DTBOIMG_PARTITION_SIZE := 25165824         # 24MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 52848230400 # ~49GB

# 文件系统类型（关键修复：必须完整）
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

# 输出配置（关键修复：必须添加）
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_ODM := odm

# 用户数据文件系统
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# ========== Recovery 配置（独立 recovery 分区）==========
TARGET_NO_RECOVERY := false
# 不要设置 BOARD_USES_RECOVERY_AS_BOOT！

# ========== 墨水屏特定配置 ==========
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_THEME := portrait_hdpi
TW_NO_SCREEN_TIMEOUT := true      # 墨水屏无烧屏风险
TW_NO_SCREEN_BLANK := true        # 禁用黑屏（墨水屏唤醒慢）
TW_SCREEN_BLANK_ON_BOOT := false  # 启动不黑屏

# 亮度配置（Leaf5 最大亮度 32）
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 32
TW_DEFAULT_BRIGHTNESS := 20
TW_NO_BRIGHTNESS := false

# 禁用振动（墨水屏无振动马达）
TW_NO_HAPTICS := true

# 性能优化（墨水屏低刷新率）
TW_NO_CPU_TEMP := true            # 禁用温度显示
TW_NO_ANIMATIONS := true          # 禁用动画

# ========== 按键配置（只有音量上下可用）==========
# 音量键默认：上=导航向上，下=导航向下
# 电源键=确认（如果可用）

# ========== 加密支持（Android 13 FBE）=========
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# ========== 其他功能 ==========
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_LPTOOLS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_MTP := true

# 调试
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
