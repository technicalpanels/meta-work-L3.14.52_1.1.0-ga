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
	   file://0017-Add-eMMC5.1-EXT_CSD-revision-8-support.patch \
	   file://0018-Add-TSC2007-Touchscreen-Support.patch \
	   file://0019-Add-3cm-GT9271-Touch-Config-Support.patch \
	   file://0020-Add-MCP23S08-GPIO-IC-Support.patch \
	   file://0021-IMX6QDL-Add-15-Size-Board-Support.patch \
	   file://0022-IMX6QDL-Add-12L-Size-Board-Support.patch \
	   file://0023-Add-filter-noise-feature-for-TSC2007-And-add-this-fe.patch \
	   file://0024-IMX6QDL-Add-9.7-Size-Board-Support.patch \
	   file://0025-Add-Quectel-EC20-R2.0-Support-And-Remove-CRYPTO_SHA1.patch \
	   file://0026-Add-7L-LCD-Support.patch \
	   file://0027-Fix-1000Mbps-ethernet-upload-speed-slow-issue.patch \
	   file://0028-Add-BOE-DV185WHM-NM1-18.5-Support.patch \
	   file://0029-Add-19-size-support.patch \
	   file://0030-Repair-ft-touchscreen-driver.patch \
"
KERNEL_DEVICETREE ="imx6q-eisd-1024600.dtb \
		     imx6q-eisd-1024600-no-uart-dma.dtb \
		     imx6q-eisd-1024600-logo.dtb \
		     imx6q-eisd-1024600-logo-no-uart-dma.dtb \
		     imx6q-eisd-1024600-gt911.dtb \
		     imx6q-eisd-1024600-gt911-no-uart-dma.dtb \
		     imx6q-eisd-1024600-gt911-logo.dtb \
		     imx6q-eisd-1024600-gt911-logo-no-uart-dma.dtb \
  	             imx6q-eisd-1024768-97.dtb \
		     imx6q-eisd-1024768-logo-97.dtb \
		     imx6q-eisd-1280800.dtb \
		     imx6q-eisd-1280800-logo.dtb \
		     imx6q-eisd-1280800-gt9271.dtb \
		     imx6q-eisd-1280800-gt9271-logo.dtb \
  	             imx6q-eisd-800600.dtb \
		     imx6q-eisd-800600-logo.dtb \
  	             imx6q-eisd-1024768.dtb \
		     imx6q-eisd-1024768-logo.dtb \
  	             imx6q-eisd-1366768.dtb \
		     imx6q-eisd-1366768-logo.dtb \
  	             imx6q-eisd-12801024.dtb \
		     imx6q-eisd-12801024-logo.dtb \
  	             imx6q-eisd-1440900.dtb \
		     imx6q-eisd-1440900-logo.dtb \
  	             imx6q-eisd-19201080.dtb \
		     imx6q-eisd-19201080-logo.dtb"

# Use config after patched
addtask copy_defconfig after do_patch before do_configure
