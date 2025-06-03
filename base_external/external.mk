AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-RuQian5757.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_VERSION = main

define AESD_ASSIGNMENTS_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/finder.sh $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/finder-test.sh $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0644 -D $(@D)/conf/username.txt $(TARGET_DIR)/etc/finder-app/conf/username.txt
endef

$(eval $(generic-package))
