#
# Copyright (C) 2024 The hentaiOS Project and its Proprietors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST +=  \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
    system/etc/permissions/privapp-permissions-google.xml \
    system/etc/textclassifier/actions_suggestions.universal.model \
    system/etc/textclassifier/lang_id.model \
    system/etc/textclassifier/textclassifier.en.model \
    system/etc/textclassifier/textclassifier.universal.model \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/priv-app/TagGoogle/TagGoogle.apk


PRODUCT_USE_SCUDO := true

# Gboard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.enable_quick_start_flow=true \
    setupwizard.feature.enable_restore_anytime=true \
    setupwizard.feature.enable_wifi_tracker=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true \
    setupwizard.feature.portal_notification=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.personal_safety_suw_enabled=true \

# StorageManager configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.storage_manager.show_opt_in=false

# OPA configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# Google Play services configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# CarrierSetup configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.carriersetup.vzw_consent_page=true

# Use gestures by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay

# Turn off storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=false

# Use 2-button navbar by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.twobutton

# Enable blur
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
dalvik.vm.checkjini=false \
ro.kernel.android.checkjni=0 \
ro.kernel.checkjni=0 \
ro.config.nocheckin=1 \
debug.systemui.latency_tracking=0 \
persist.sample.eyetracking.log=0 \
ro.com.google.locationfeatures=0 \
ro.com.google.networklocation=0 \
sys.debug.watchdog=0 \
logd.statistics=0 \
config.stats=0 \
persist.sys.loglevel=0 \
sys.log.app=0 \
persist.traced.enable=0 \
logd.statistics=0 \
persist.sample.eyetracking.log=0 \
debug.atrace.tags.enableflags=0 \
debugtool.anrhistory=0 \
ro.debuggable=1 \
profiler.debugmonitor=false \
profiler.launch=false \
profiler.hung.dumpdobugreport=false \
trustkernel.log.state=disable \
debug.mdpcomp.logs=0 \
debug.atrace.tags.enableflags=0 \
pm.sleep_mode=1 \
profiler.force_disable_ulog=true \
profiler.force_disable_err_rpt=true \
ro.logd.size.stats=0 \
debug.atrace.tags.enableflags=0 \
persist.service.pcsync.enable=0 \
persist.service.lgospd.enable=0

PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=0 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.ois.disable=0

$(call inherit-product, vendor/lineage/config/telephony.mk)
$(call inherit-product, vendor/pixel-style/config/gms_full.mk)
$(call inherit-product, vendor/certification/config.mk)

# Inherit from audio config
$(call inherit-product, vendor/pixel-style/config/audio.mk)

# Inherit from rro_overlays config
$(call inherit-product, vendor/pixel-style/config/rro_overlays.mk)

# Inherit from textclassifier config
$(call inherit-product, vendor/pixel-style/config/textclassifier.mk)
