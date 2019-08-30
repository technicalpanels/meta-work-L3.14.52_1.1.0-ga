#
# This file was derived from the chipseeappends recipe Manual.
#

DESCRIPTION = "Chipsee network application"
SECTION = "network"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

DEPENDS = "qtbase"

HT_SRC ?= "git://github.com/leavs/network.git;protocol=https"
SRC_URI = "${HT_SRC};branch=master \
	   file://wifi.desktop \
	   file://wpa_supplicant.conf \
	   file://wifi.png \
	   file://rtl8723b_fw \
	   file://rtl8723bu_config \
"

SRCREV = "8e164e33bc0a0c104d15745739e96291276903b7"

S = "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${B}/wifi ${D}${bindir}
#Desktop and pixmaps
    install -d ${D}${datadir}/applications
    install -d ${D}${datadir}/pixmaps
    install -d ${D}/etc
    install -d ${D}/lib/firmware
    cp -ar ${WORKDIR}/wifi.desktop ${D}${datadir}/applications/
    cp -ar ${WORKDIR}/wifi.png ${D}${datadir}/pixmaps/
#Chipsee default wifi config
    cp -ar ${WORKDIR}/wpa_supplicant.conf ${D}/etc/
#RTL8723BU BT firmware
    cp -ar ${WORKDIR}/rtl8723b_fw ${D}/lib/firmware/
    cp -ar ${WORKDIR}/rtl8723bu_config ${D}/lib/firmware/
}

#Disable QA Issue: Files/directories were installed but not shipped
FILES_${PN} += "/lib/firmware/*"
