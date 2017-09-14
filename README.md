# meta-work
Board Support

# imx6ul
imx6ul platform support

# meta-fsl-bsp-release-patchs
Repair meta-fsl-bsp-release enable the imx_v7_defconfig patch.
0001-Chipsee-Repair-imx_v7_defconfig-Patch-Enable.patch

# Use Guide

1. cd <BSPDIR>/sources/
2. git clone https://github.com/leavs/meta-work.git
3. add bblayers to <build_dir>/conf/bblayers.conf

For imx6ul \
BBLAYERS = " \
	..... \
	${BSPDIR}/sources/meta-work/imx6ul \
"
