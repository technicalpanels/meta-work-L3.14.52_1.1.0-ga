FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-keep-logo-from-uboot-to-kernel.patch \
	   file://0002-add-some-hid-devices.patch \
	   file://0003-add-ft-and-gt-touchscreen-support.patch \
	   file://0004-add-asix-usb-net-and-rtl8723bs-wifi-support.patch \
	   file://0005-support-7ft-device.patch \
	   file://0006-Repair-watchdog-and-add-7-gt911-dtsi.patch \
           file://0007-Add-new-devicetree-architecture-for-IMX6Q-and-IMX6DL.patch \
	   file://0008-Modify-DTS-Arch-and-Repair-pwm-Driver.patch \
           file://0009-Modify-DTS-Arch.patch \
           file://0010-Add-1280800-Board-Support.patch \
           file://0011-fix-led-dts.patch \
           file://0012-update-the-ft5x06-driver-version-to-control-by-dts.patch \
	   file://0013-Add-6Q-7-Size-No-UART-DMA.patch \
	   file://0014-IMX6QDL-Add-17-Size-Board-Support-And-Modify-Backlig.patch \
	   file://0015-Add-21.5-Display-Support-And-Add-Some-HID-Touchscree.patch \
           file://0016-Add-HID-MULTITOUCH-Support.patch \
"
KERNEL_DEVICETREE +="imx6dl-eisd-1024600.dtb \
                     imx6dl-eisd-1024600-logo.dtb \
                     imx6dl-eisd-1024600-gt911.dtb \
                     imx6dl-eisd-1024600-gt911-logo.dtb \
                     imx6dl-eisd-1280800.dtb \
                     imx6dl-eisd-1280800-logo.dtb \
                     imx6dl-eisd-1280800-gt9271.dtb \
                     imx6dl-eisd-1280800-gt9271-logo.dtb \
		     imx6dl-eisd-12801024.dtb \
		     imx6dl-eisd-12801024-logo.dtb \
		     imx6dl-eisd-19201080.dtb \
		     imx6dl-eisd-19201080-logo.dtb"
