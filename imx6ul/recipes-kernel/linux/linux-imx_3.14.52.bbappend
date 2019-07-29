FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-Chipsee-IMX6ULIPC-Port.patch \
	   file://0002-Repair-GT9XX-Touchscreen-Reset-Issue.patch \
	   file://0003-Add-GT911-Sensor-ID-0.patch \
	   file://0004-Add-PHY-KSZ8081-New-Silicon-Revision.patch \
	   file://0005-Modify-the-Goodix-Touch-Config.patch \
	   file://0006-Add-8723BU-Support.patch \
	   file://0007-Enable-POSIX_MQUEUE-FHANDLE-CFG80211_WEXT-Config.patch \
	   file://0008-Update-LCD-clock-frequency-45MHz-and-pol-1.patch \
	   file://0009-Modify-mx6ulipc-to-mx6ul-eisd-and-remove-1g-version.patch \
	   file://0010-rename-fdt-to-imx6ul-eisd.dtb.patch \
	   file://0011-Add-eMMC5.1-EXT_CSD-revision-8-support.patch \
	   file://0012-Modify-DCLK-pol-to-0.patch \
	   file://0013-Modify-Red-Led-to-mmc1-trigger-and-limit-usdhc1-to-no-1-8-v-feature.patch \
"

KERNEL_DEVICETREE = "imx6ul-eisd.dtb"
