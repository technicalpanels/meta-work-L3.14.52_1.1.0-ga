FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-keep-logo-from-uboot-to-kernel.patch \
	   file://0002-add-some-hid-devices.patch \
	   file://0003-add-ft-and-gt-touchscreen-support.patch \
	   file://0004-add-asix-usb-net-and-rtl8723bs-wifi-support.patch \
	   file://0005-support-7ft-device.patch \
"
KERNEL_DEVICETREE +="imx6q-sabresd-logo-lvds-ipu1-di0.dtb"
