#
# This file was derived from the hardwaretest recipe Manual.
#

DESCRIPTION = "Chipsee egalaxinit"
SECTION = "egalaxinit"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

# /usr/share/X11/xorg.conf.d/ need xserver-xorg
DEPENDS = "xserver-xorg libx11 libxrender libxcb libxext libxrandr libxau"

SRC_URI = "file://52-egalax-virtual.conf \
	   file://eCalib \
	   file://eGTouchD \
	   file://eGTouchL.ini"

S = "${WORKDIR}"

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${S}/eCalib ${D}${bindir}
    install -m 0755 ${S}/eGTouchD ${D}${bindir}
#config and x11 file
    install -d ${D}${datadir}/X11/xorg.conf.d
    install -d ${D}/etc
    cp -ar ${S}/eGTouchL.ini ${D}/etc/
    cp -ar ${S}/52-egalax-virtual.conf ${D}${datadir}/X11/xorg.conf.d/
}

#Disable QA Issue: Files/directories were installed but not shipped
FILES_${PN} += "/usr/share/X11/xorg.conf.d/"

#Disable QA Issue: No GNU_HASH in the elf binary
INSANE_SKIP_${PN} = "ldflags"
