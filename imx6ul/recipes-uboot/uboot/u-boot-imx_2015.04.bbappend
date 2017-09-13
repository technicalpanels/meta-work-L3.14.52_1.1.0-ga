FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-Add-chipsee-board-support.patch"
UBOOT_CONFIG[sd] = "mx6ulipc_config,sdcard"
