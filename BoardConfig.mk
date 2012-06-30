# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Board
LOCAL_PATH:= $(call my-dir)

TARGET_BOARD_PLATFORM := bcm21553
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

TARGET_BOOTLOADER_BOARD_NAME := totoro

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_OTA_ASSERT_DEVICE := totoro,GT-S5360

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_BLUETOOTH := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true
BRCM_BTL_INCLUDE_OBEX:=true
BRCM_BTL_OBEX_USE_DBUS:=true
TARGET_PREBUILT_BT := y
BT_CHIP:=4330B1_26M
TARGET_USE_SOFTWARE_AUDIO_AAC := true

# Camera
USE_CAMERA_STUB := true
BOARD_V4L2_DEVICE := /dev/video2
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_USE_JPEG := true
TARGET_USE_DISKINSTALLER := true

# 2d/3d
TARGET_BOARD_PLATFORM_GPU := hgl
BOARD_EGL_CFG := device/samsung/totoro/egl.cfg
BOARD_USE_SCREENCAP := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Misc
WITH_JIT := true
ENABLE_JSC_JIT := true
#JS_ENGINE := v8

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

# usb for ICS, but this is GB
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"
#BOARD_UMS_LUNFILE := "/sys/devices/lm-2/gadget/lun0/file"

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := console=ttyS0 no_console_suspend
BOARD_KERNEL_BASE := 0x81600000	 
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/totoro/kernel	
TARGET_RECOVERY_INITRC := device/samsung/totoro/recovery.rc

# device sizes, ain't it?
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 233308160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 199491584
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/totoro/shbootimg.mk
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/totoro/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_LDPI_RECOVERY := true
BOARD_RECOVERY_HANDLES_MOUNT := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE 	    := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"
