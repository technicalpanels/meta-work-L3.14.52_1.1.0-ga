#
# This file was derived from the chipseeappends recipe Manual.
#

DESCRIPTION = "Chipsee lcdtester application"
SECTION = "lcdtester"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

DEPENDS = "qtbase"

HT_SRC ?= "git://github.com/Chipsee/LCDTester.git;protocol=https"
SRC_URI = "${HT_SRC};branch=master"

SRCREV = "3281a11acd65c5225fd000c633e6201a22766745"

S = "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${B}/LCDTester ${D}${bindir}
}

#Disable QA Issue: Files/directories were installed but not shipped
#FILES_${PN} += "/usr/hardwaretest/*"
