FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-Chipsee-IMX6QDL-7-Support.patch \
	file://0002-Add-21.5-Display-Support-and-Add-Bypass-GPIO.patch \
	file://0003-Add-9.7-Size-Support-And-reset-to-7-Size-default.patch \
	file://0004-Add-new-arch.patch \
"
UBOOT_CONFIG[sd] = "mx6qeisd_config,sdcard"
