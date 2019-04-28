FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-Chipsee-IMX6ULIPC-Port.patch \
	   file://0002-Repair-GT9XX-Touchscreen-Reset-Issue.patch \
	   file://0003-Add-GT911-Sensor-ID-0.patch \
	   file://0004-Add-PHY-KSZ8081-New-Silicon-Revision.patch \
	   file://0005-Modify-the-Goodix-Touch-Config.patch \
	   file://0006-Add-8723BU-Support.patch \
	   file://0007-Enable-POSIX_MQUEUE-FHANDLE-CFG80211_WEXT-Config.patch \
"

KERNEL_DEVICETREE = "mx6ulipc.dtb mx6ulipc-1g.dtb"
