FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-Chipsee-IMX6QDL-7-Support.patch \
	file://0002-Add-21.5-Display-Support-and-Add-Bypass-GPIO.patch \
	file://0003-Add-9.7-Size-Support-And-reset-to-7-Size-default.patch \
	file://0004-Add-new-arch.patch \
	file://0005-update-DCD.patch \
	file://0006-Add-7L-LCD-support.patch \
	file://0007-Add-eMMC-Test-bootcmd-support.patch \
	file://0008-Add-MAC-support.patch \
"
UBOOT_CONFIG[sd] = "mx6dleisd_config,sdcard"
