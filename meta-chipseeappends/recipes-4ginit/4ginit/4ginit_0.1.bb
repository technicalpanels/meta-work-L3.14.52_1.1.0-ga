#
# This file was derived from the hardwaretest recipe Manual.
#

DESCRIPTION = "Chipsee 4ginit"
SECTION = "4ginit"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

DEPENDS = "ppp"

SRC_URI = "file://linux-ppp-scripts_v1.2/quectel-chat-connect \
	   file://linux-ppp-scripts_v1.2/quectel-chat-disconnect \
	   file://linux-ppp-scripts_v1.2/quectel-ppp \
	   file://linux-ppp-scripts_v1.2/quectel-pppd.sh \
	   file://linux-ppp-scripts_v1.2/quectel-ppp-kill \
	   file://linux-ppp-scripts_v1.2/ip-up \
	   file://quectel-CM"

S = "${WORKDIR}/linux-ppp-scripts_v1.2"

do_install() {
#Binary
    install -d ${D}${bindir}/
    install -m 0755 ${S}/quectel-pppd.sh ${D}${bindir}
    install -m 0755 ${S}/quectel-ppp-kill ${D}${bindir}
    install -m 0755 ${S}/ip-up ${D}${bindir}
    install -m 0755 ${WORKDIR}/quectel-CM ${D}${bindir}
#config and x11 file
    install -d ${D}/etc/ppp/peers
    cp -ar ${S}/quectel-chat-connect ${D}/etc/ppp/peers/
    cp -ar ${S}/quectel-chat-disconnect ${D}/etc/ppp/peers/
    cp -ar ${S}/quectel-ppp ${D}/etc/ppp/peers/
}

#Disable QA Issue: Files/directories were installed but not shipped
#FILES_${PN} += "/usr/hardwaretest/*"

#Disable QA Issue: File '/usr/bin/quectel-CM' from 4ginit was already stripped
INSANE_SKIP_${PN} = "already-stripped"
