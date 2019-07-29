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
			lcdtester \
			network"

#
# python3/python3-pip is from L4.1.15
# need set PYTHON_BASEVERSION = "3.4" in follow file:
# /meta/classes/python3native.bbclass distutils3-base.bbclass distutils3-native-base.bbclass
# and copy python3.4 recipe from L4.1.15 to L3.14.52 follow file:
# python3/ python3_3.4.3.bb python3-native_3.4.3.bb python3-pip_6.1.1.bb python3-setuptools_18.2.bb
# remove old one python3/ python3_3.3.3.bb python3-native_3.3.3.bb
# after install python3-pip, the python3-setuptools_18.2.bb will install automaticliy
#
# !!!!  has bug !!!!
#CORE_IMAGE_EXTRA_INSTALL += " python3 python3-pip"
