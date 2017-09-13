FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

SRC_URI +="file://0001-Add-Chipsee-MX6ULIPC-Support.patch"

KERNEL_DEVICETREE = "mx6ulipc.dtb mx6ulipc-1g.dtb"
