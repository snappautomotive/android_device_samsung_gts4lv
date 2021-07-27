PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0-service \
    android.hardware.automotive.audiocontrol@2.0-service \
    android.frameworks.automotive.display@1.0-service \
    Vehicle

# Car init.rc
PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/init/init.bootstat.rc:root/init.bootstat.rc \
    packages/services/Car/car_product/init/init.car.rc:root/init.car.rc

# Enable landscape
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.screen.landscape.xml

# Used to embed a map in an activity view
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.activities_on_secondary_displays.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.activities_on_secondary_displays.xml

# Additional permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.type.automotive.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.type.automotive.xml

# Whitelisted packages per user type
PRODUCT_COPY_FILES += \
  device/generic/car/common/preinstalled-packages-product-car-emulator.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-car-emulator.xml

# Multi-user properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
    android.car.number_pre_created_users=1 \
    android.car.number_pre_created_guests=1 \
    android.car.user_hal_enabled=true

# Additional selinux policy
BOARD_SEPOLICY_DIRS += device/generic/car/common/sepolicy

$(call inherit-product, packages/services/Car/evs/sepolicy/evs.mk)
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
