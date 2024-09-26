# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# crDroid System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.matrixx.maintainer=$(STARK_MAINTAINER) \
    ro.crdroid.build.version=$(LINEAGE_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CR_VERSION) \
    ro.matrixx.build.variant=$(STARK_BUILD_VARIANT) \
    ro.matrixx.maintainer=$(STARK_MAINTAINER) \
    ro.matrixx.release.type=$(STARK_BUILD_TYPE)


    
# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
