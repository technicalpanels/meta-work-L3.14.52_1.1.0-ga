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
	   file://wifi.png"

SRCREV = "e7bcda666aa4a7ee41db07b19a2763737908bdf6"

S = "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${B}/wifi ${D}${bindir}
#Desktop and pixmaps
    install -d ${D}${datadir}/applications
    install -d ${D}${datadir}/pixmaps
    cp -ar ${WORKDIR}/wifi.desktop ${D}${datadir}/applications/
    cp -ar ${WORKDIR}/wifi.png ${D}${datadir}/pixmaps/
}

#Disable QA Issue: Files/directories were installed but not shipped
#FILES_${PN} += "/usr/hardwaretest/*"
