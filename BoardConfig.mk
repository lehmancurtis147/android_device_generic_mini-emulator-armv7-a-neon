# config.mk
#
# Product-specific compile-time definitions.
#

include device/generic/armv7-a-neon/BoardConfig.mk

ifndef PDK_FUSION_PLATFORM_ZIP
ifeq ($(HOST_OS),linux)
  WITH_DEXPREOPT := true
endif
endif # PDK_FUSION_PLATFORM_ZIP

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_ARCH := arm

TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true
# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

BOARD_USES_GENERIC_AUDIO := true

USE_CAMERA_STUB := true

BUILD_EMULATOR_OPENGL := true
USE_OPENGL_RENDERER := true

BOARD_USE_LEGACY_UI := true
VSYNC_EVENT_PHASE_OFFSET_NS := 0

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_SEPOLICY_DIRS += build/target/board/generic/sepolicy
