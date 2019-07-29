# rm 30xinput_calibrate.sh to avoid xinput_calibrator run at system boot.
do_install_append() {
    rm ${D}${sysconfdir}/X11/Xsession.d/30xinput_calibrate.sh
}

