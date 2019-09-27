Chipsee Yocto layer for L3.14.52 User Guide
===========================================

Build environment
-----------------

 1.Host packages

 A Yocto Project build requires that some packages be installed for the build that are documented under the Yocto Project.
 You can go to `Yocto Project Quick Start`_ and check for the packages that must be installed for your build machine.

 Essential Yocto Project host packages are::

    $ sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat libsdl1.2-dev

 i.MX layers host packages for a Ubuntu 12.04 or 14.04 host setup are::

    $ sudo apt-get install libsdl1.2-dev xterm sed cvs subversion coreutils texi2html \
    docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils \
    libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc

 i.MX layers host packages for a Ubuntu 12.04 host setup only are::

    $ sudo apt-get install uboot-mkimage

 i.MX layers host packages for a Ubuntu 14.04 host setup only are::

    $ sudo apt-get install u-boot-tools

 2. Setting up the repo utility

 Create a bin folder in the home directory.::

    $ mkdir ~/bin (this step may not be needed if the bin folder already exists)
    $ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    $ chmod a+x ~/bin/repo

 Add the following line to the .bashrc file to ensure that the ~/bin folder is in your PATH variable.::

    $ export PATH=~/bin:$PATH

 3. config your git

 Config your git like follow::

    $ git config --global user.name "Your Name" 
    $ git config --global user.email "Your Email"


Build scenarios
---------------

 1. Set up the manifest and populate the Yocto Project layer sources with thease commands::

    $ mkdir fsl-release-bsp
    $ cd fsl-release-bsp
    $ repo init -u git://git.freescale.com/imx/fsl-arm-yocto-bsp.git -b imx-3.14.52-1.1.0_ga
    $ repo sync

 2. Use thease commands to build X-11 with QT5 image.::

    $ DISTRO=fsl-imx-x11 MACHINE=imx6qsabresd source fsl-setup-release.sh -b build-x11

 3. Add chipsee meta-work layer in Yocto Project.::

    $ cd fsl-release-bsp/sources/
    $ git clone https://github.com/leavs/meta-work-L3.14.52_1.1.0-ga.git meta-work

 4. Add meta-work bblayers to build-x11/conf/bblayers.conf, like follow:::

    BBLAYERS = " \
            ..... \
            ${BSPDIR}/sources/meta-work/imx6q \
    "

 5. Add follow to  build-x11/conf/local.conf

::

    #use u-boot-imx
    PREFERRED_PROVIDER_u-boot_mx6 = "u-boot-imx"

    #if you need chromium, add follow two line
    CORE_IMAGE_EXTRA_INSTALL += "chromium libexif"
    LICENSE_FLAGS_WHITELIST="commercial"

 6. Build

::

   $ cd fsl-release-bsp
   $ source setup-environment build-x11
   $ bitbake fsl-image-qt5	// build x11 image with qt5
   or
   $ bitbake fsl-image-gui	// build x11 image without qt5
   or
   $ bitbake core-image-base    // build a console-only image that fully support the target device hardware

.. links
.. _Yocto Project Quick Start: https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html

