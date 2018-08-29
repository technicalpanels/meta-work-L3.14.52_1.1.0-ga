FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-Chipsee-IMX6QDL-7-Support.patch \
	file://0002-Add-21.5-Display-Support-and-Add-Bypass-GPIO.patch \
"
UBOOT_CONFIG[sd] = "mx6qeisd_config,sdcard"
