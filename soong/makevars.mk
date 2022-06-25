EXPORT_TO_SOONG := \
    TW_THEME \
    TW_CUSTOM_THEME \
    TW_INCLUDE_CRYPTO \
    DEVICE_RESOLUTION \
    TARGET_SCREEN_WIDTH \
    TARGET_SCREEN_HEIGHT \
    TW_DELAY_TOUCH_INIT_MS \
    TW_EVENT_LOGGING \
    TW_USE_KEY_CODE_TOUCH_SYNC \
    TW_OZIP_DECRYPT_KEY \
    TW_NO_SCREEN_BLANK \
    TW_NO_SCREEN_TIMEOUT \
    TW_OEM_BUILD \
    TW_X_OFFSET \
    TW_Y_OFFSET \
    TW_W_OFFSET \
    TW_H_OFFSET \
    TW_FRAMERATE \
    TW_ROUND_SCREEN \
    TWRES_PATH \
    TWRP_CUSTOM_KEYBOARD \
    TW_EXTRA_LANGUAGES \
    TARGET_RECOVERY_ROOT_OUT \
    TARGET_RECOVERY_PIXEL_FORMAT \
    AB_OTA_UPDATER \
    PLATFORM_SDK_VERSION \
    TW_INCLUDE_CRYPTO_FBE \
    TW_SUPPORT_INPUT_1_2_HAPTICS \
    TW_TARGET_USES_QCOM_BSP \
    TW_NEW_ION_HEAP \
    TW_INCLUDE_JPEG \
    RECOVERY_TOUCHSCREEN_SWAP_XY \
    RECOVERY_TOUCHSCREEN_FLIP_X \
    RECOVERY_TOUCHSCREEN_FLIP_Y \
    RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH \
    RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER \
    TWRP_EVENT_LOGGING \
    TARGET_RECOVERY_FORCE_PIXEL_FORMAT \
    TARGET_RECOVERY_OVERSCAN_PERCENT \
    TW_SCREEN_BLANK_ON_BOOT \
    TW_FBIOPAN \
    TW_ROTATION \
    BOARD_HAS_FLIPPED_SCREEN \
    TW_IGNORE_MAJOR_AXIS_0 \
    TW_IGNORE_MT_POSITION_0 \
    TW_INPUT_BLACKLIST \
    TW_WHITELIST_INPUT \
    TW_HAPTICS_TSPDRV \
    TARGET_PREBUILT_KERNEL \
    TW_EXCLUDE_NANO \
    TW_SUPPORT_INPUT_AIDL_HAPTICS \
    TW_USE_SAMSUNG_HAPTICS

SOONG_CONFIG_NAMESPACES += makeVarsPlugin
SOONG_CONFIG_makeVarsPlugin :=
#SOONG_CONFIG_makeVarsPlugin += TW_THEME
#SOONG_CONFIG_makeVarsPlugin_TW_THEME := $(TW_THEME)
define addVar
  SOONG_CONFIG_makeVarsPlugin += $(1)
  SOONG_CONFIG_makeVarsPlugin_$(1) := $$(subst ",\",$$($1))
endef
$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call addVar,$(v))))
