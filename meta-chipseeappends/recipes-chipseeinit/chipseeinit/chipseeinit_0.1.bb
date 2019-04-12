#
# This file was derived from the hardwaretest recipe Manual.
#

DESCRIPTION = "Chipsee chipseeinit"
SECTION = "chipseeinit"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

# We need fsl-rc-local first
DEPENDS = "fsl-rc-local"

SRC_URI = "file://cal \
	   file://rc.local \
	   file://chipsee-init"

S = "${WORKDIR}"

do_install() {
#GPIO Init shell
    install -d ${D}/etc/init.d
    install -d ${D}/etc/rc5.d
    cp -ar ${S}/chipsee-init ${D}/etc/init.d/
    ln -sf ../init.d/chipsee-init ${D}/etc/rc5.d/S00chipsee-init
#rc.local
    cp -ar ${S}/rc.local ${D}/etc/
#cal
    install -d ${D}/etc/X11/xorg.conf.d
    install -d ${D}/etc/chipseeinit/cal
    cp -ar ${S}/cal/* ${D}/etc/chipseeinit/cal/
}

#Disable QA Issue: Files/directories were installed but not shipped
#FILES_${PN} += "/usr/hardwaretest/*"

#Disable QA Issue: File '/usr/bin/quectel-CM' from 4ginit was already stripped
#INSANE_SKIP_${PN} = "already-stripped"
