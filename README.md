# meta-work-L3.14.52_1.1.0-ga
Board Support for L3.14.52_1.1.0-ga

# imx6ul
imx6ul platform support

# imx6q
imx6q platform support

# meta-fsl-bsp-release-patchs
addtask copy_defconfig after do_patch before do_configure


# Use Guide

1. cp 0001-Chipsee-Repair-imx_v7_defconfig-Patch-Enable.patch <BSPDIR>/sources/meta-fsl-bsp-release/
2. git apply 0001-Chipsee-Repair-imx_v7_defconfig-Patch-Enable.patch
3. cd <BSPDIR>/sources/
4. git clone https://github.com/leavs/meta-work.git
5. add meta-work bblayers to <BUILDDIR>/conf/bblayers.conf, like follow:

    For imx6ul \
    BBLAYERS = " \
    	    ..... \
	    ${BSPDIR}/sources/meta-work/imx6ul \
    "
