#
# This file was derived from the hardwaretest recipe Manual.
#

DESCRIPTION = "Chipsee hardwaretest_serial(HT_S) application"
SECTION = "hardwaretest-serial"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

DEPENDS = "qtbase"

HT_SRC ?= "git://github.com/leavs/hardwaretest_serial.git;protocol=https"
SRC_URI = "${HT_SRC};branch=master \
	   file://hardwaretest_serial.desktop \
	   file://serial.png"

SRCREV = "5170f6fa8572b6a172b2328237ed235f0878dc0a"

S = "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${B}/hardwaretest_serial ${D}${bindir}
#Desktop and pixmaps
    install -d ${D}${datadir}/applications
    install -d ${D}${datadir}/pixmaps
    cp -ar ${WORKDIR}/hardwaretest_serial.desktop ${D}${datadir}/applications/
    cp -ar ${WORKDIR}/serial.png ${D}${datadir}/pixmaps/
}

#Disable QA Issue: Files/directories were installed but not shipped
#FILES_${PN} += "/usr/hardwaretest/*"
