#Don't Install Freescale QT demo applications which can's show frame
IMAGE_INSTALL_remove += "fslqtapplications"

# append packages
IMAGE_INSTALL_append = "openssh-sftp-server \
			openssh-sftp \
			sqlite3 \
			ntfs-3g \
			ppp \
			cronie \
			logrotate \
			chipseeinit \
			egalaxinit \
			4ginit \
			hardwaretest \
			hardwaretest-serial \
			network"
