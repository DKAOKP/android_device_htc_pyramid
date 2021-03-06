# Specify phone tech before including full_phone
$(call inherit-product, vendor/dkosp/config/gsm.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/dkosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Device naming
PRODUCT_NAME := pyramid
PRODUCT_DEVICE := dkosp_pyramid
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Sensation
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := JellyBean
PRODUCT_VERSION_DEVICE_SPECIFIC := _OFFICIAL-

PRODUCT_MOTD := "\n\n\n--------------------MESSAGE---------------------\nThank you for choosing DKOSP-JellyBean\n"

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/dkosp/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES +=  \
    vendor/dkosp/prebuilt/common/app/SuperSU.apk:system/app/SuperSU.apk 

PRODUCT_COPY_FILES +=  \
    vendor/dkosp/prebuilt/common/app/PerformanceControl.apk:system/app/PerformanceControl.apk

PRODUCT_COPY_FILES +=  \
    vendor/dkosp/prebuilt/common/xbin/su:system/xbin/su

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/dkosp/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/dkosp/overlay/hot_reboot
