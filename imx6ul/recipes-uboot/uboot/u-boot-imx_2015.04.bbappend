FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-chipsee-board-support.patch \
	file://0002-Add-X11-And-Consoleblank-Uboot-ENV.patch \
"
UBOOT_CONFIG[sd] = "mx6ulipc_config,sdcard"
