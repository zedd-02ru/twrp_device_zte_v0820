#USE_NINJA := false

DEVICE_PATH := device/zte/v0820
# Platform
TARGET_BOARD_PLATFORM := mt6750
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53
#TARGET_CPU_VARIANT := generic

#TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ZTE_BLADE_V0820

# Kernel
BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32S1,32S1 \
	androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x05000000

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 4780982272
#BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x05000000 --tags_offset 0x04000000 --board 1471342055

# Assert
TARGET_OTA_ASSERT_DEVICE := ZTE,BLADE,V8Lite,V0820

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

#system.prop
#TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
##LZMA_RAMDISK_TARGETS := boot,recovery

# Encryption
TW_INCLUDE_CRYPTO := true
TW_IGNORE_MISC_WIPE_DATA := true

TW_CRYPTO_FS_TYPE := "f2fs"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,inline_data,inline_xattr,data=ordered"

# TWRP stuff
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

#Fix Wipe
#BOARD_SUPPRESS_SECURE_ERASE := true

#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_SDCARD_ON_DATA := true

# TWRP
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_THEME := portrait_hdpi
#TWRP_NEW_THEME := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 20
TW_DEFAULT_LANGUAGE := ru
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/battery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_SCREEN_BLANK_ON_BOOT := true
TW_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
TW_EXCLUDE_SUPERSU := true
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_NTFS_3G := true
#TW_NO_EXFAT_FUSE := true
#TWHAVE_SELINUX := true

# DEBUG (BOTH needed to enable logcat)
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true

#TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MTP_DEVICE := /dev/mtp_usb
#BOARD_USES_MTK_HARDWARE:=true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TW_DEVICE_VERSION := uznaikaz@4pda
