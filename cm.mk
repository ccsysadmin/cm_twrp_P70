# Release name
PRODUCT_RELEASE_NAME := P70-A

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/P70/device_P70.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P70
PRODUCT_NAME := cm_P70
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo P70-A
PRODUCT_MANUFACTURER := Lenovo