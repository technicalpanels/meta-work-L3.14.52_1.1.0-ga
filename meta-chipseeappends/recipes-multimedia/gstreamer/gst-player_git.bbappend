FILESEXTRAPATHS_prepend :="${THISDIR}/${PN}:"

# has bug, so we don't display it in desktop
do_install_append() {
        mv ${D}${datadir}/applications/gst-player.desktop ${D}${datadir}/applications/gst-player
}
