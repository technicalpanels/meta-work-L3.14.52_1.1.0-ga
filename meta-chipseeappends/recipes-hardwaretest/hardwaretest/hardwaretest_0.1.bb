#
# This file was derived from the hardwaretest recipe Manual.
#

DESCRIPTION = "Chipsee hardwaretest(HT) application"
SECTION = "hardwaretest"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

DEPENDS = "chipseeinit qtbase qtserialport lcdtester"

HT_SRC ?= "git://github.com/leavs/hardwaretest.git;protocol=https"
SRCBRANCH = "master"
SRCREV = "9fb6e36bcccae3d9281124410fcfa564ae24c17d"

SRC_URI = "${HT_SRC};branch=${SRCBRANCH} \
           file://hardwaretest.desktop \
           file://test.png"

S = "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${B}/hardwaretest ${D}${bindir}
#Test Resource
    install -d ${D}/usr/hardwaretest
    cp -ar ${S}/resourcefiles/hardwaretest/* ${D}/usr/hardwaretest/
#Ntpdate-sync
    install -d ${D}/etc/default
    cp -ar ${S}/tools/ntpdate ${D}/etc/default/
#Wifi shell
    cp -ar ${S}/tools/wifienable.sh ${D}${bindir}
#Desktop and pixmaps
    install -d ${D}${datadir}/applications
    install -d ${D}${datadir}/pixmaps
    cp -ar ${WORKDIR}/hardwaretest.desktop ${D}${datadir}/applications/
    cp -ar ${WORKDIR}/test.png ${D}${datadir}/pixmaps/
}

#Disable QA Issue: Files/directories were installed but not shipped
FILES_${PN} += "/usr/hardwaretest/*"
