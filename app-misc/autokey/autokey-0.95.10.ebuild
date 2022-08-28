# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION=" AutoKey, a desktop automation utility for Linux and X11. "
HOMEPAGE="https://github.com/autokey/autokey"
SRC_URI="https://github.com/autokey/autokey/archive/v0.95.10.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/dbus-python dev-python/pyinotify dev-python/python-xlib x11-misc/wmctrl dev-python/PyQt5 kde-apps/kdialog dev-python/pyqt-distutils dev-python/python-distutils-extra"
RDEPEND="${DEPEND}"
BDEPEND=""
