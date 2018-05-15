FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="\
	file://0001-Add-Chipsee-IMX6QDL-7-Support.patch \
"
UBOOT_CONFIG[sd] = "mx6dleisd_config,sdcard"
