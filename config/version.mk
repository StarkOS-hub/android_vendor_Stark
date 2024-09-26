PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
CR_VERSION := 1

STARK_BUILD_TYPE ?= Unofficial
ifeq ($(WITH_GMS), true)
  STARK_BUILD_VARIANT := Gapps
else
  STARK_BUILD_VARIANT := Vanilla
endif
ifeq ($(STARK_BUILD_TYPE), Official)
-include vendor/lineage-priv/keys/keys.mk
  OFFICIAL_DEVICES = $(shell cat vendor/lineage/stark.devices)
  FOUND_DEVICE =  $(filter $(LINEAGE_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(LINEAGE_BUILD))
      STARK_BUILD_TYPE := Official
    else
      STARK_BUILD_TYPE := Unofficial
    endif
endif

# Internal version
LINEAGE_VERSION := StarkOS-$(STARK_VARIANT)-v$(CR_VERSION)-$(STARK_BUILD_TYPE)-$(LINEAGE_BUILD)-$(STARK_BUILD_VARIANT)-$(shell date +%Y%m%d)

# Display version
LINEAGE_DISPLAY_VERSION := StarkOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(STARK_VERSION)
