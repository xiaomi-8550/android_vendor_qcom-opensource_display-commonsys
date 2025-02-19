PRODUCT_PACKAGES += libdisplayconfig.system \
                    libqdMetaData.system \
                    libgralloc.system.qti \
                    libdrm \
                    liblayerext.qti \
                    libsmomoconfig.qti \
                    libcomposerextn.qti \
                    libdisplayconfig.system.qti

SOONG_CONFIG_NAMESPACES += qtidisplaycommonsys
SOONG_CONFIG_NAMESPACES += qtiunifeddraw
# Soong Keys
SOONG_CONFIG_qtidisplaycommonsys := displayconfig_enabled gralloc_handle_has_no_custom_content_md_reserved_size gralloc_handle_has_no_reserved_size
SOONG_CONFIG_qtiunifeddraw := qtiunifeddraw_enabled
# Soong Values
SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := false
SOONG_CONFIG_qtidisplaycommonsys_gralloc_handle_has_no_custom_content_md_reserved_size := false
SOONG_CONFIG_qtidisplaycommonsys_gralloc_handle_has_no_reserved_size := false
SOONG_CONFIG_qtiunifeddraw_qtiunifeddraw_enabled := true

ifeq ($(call is-vendor-board-platform,QCOM),true)
    SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := true
endif

ifeq ($(TARGET_GRALLOC_HANDLE_HAS_NO_CUSTOM_CONTENT_MD_RESERVED_SIZE),true)
    SOONG_CONFIG_qtidisplaycommonsys_gralloc_handle_has_no_custom_content_md_reserved_size := true
endif

ifeq ($(TARGET_GRALLOC_HANDLE_HAS_NO_RESERVED_SIZE),true)
    SOONG_CONFIG_qtidisplaycommonsys_gralloc_handle_has_no_reserved_size := true
endif
