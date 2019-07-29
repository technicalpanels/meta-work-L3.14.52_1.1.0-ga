FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-chipsee-board-support.patch \
	file://0002-Add-X11-And-Consoleblank-Uboot-ENV.patch \
	file://0003-Remove-uboot-logo-display-feature-which-has-bug-now.patch \
	file://0004-Modify-the-board-name-to-mx6uleisd.patch \
"
UBOOT_CONFIG[sd] = "mx6uleisd_config,sdcard"
