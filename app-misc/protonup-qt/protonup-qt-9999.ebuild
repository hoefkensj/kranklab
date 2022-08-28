# $Header: $
EAPI=8
inherit git-r3
DESCRIPTION="Install and manage Proton-GE and Luxtorpeda for Steam and Wine-GE for Lutris with this graphical user interface. Based on AUNaseef's ProtonUp, made with Python 3 and Qt 6."
HOMEPAGE="https://github.com/DavidoTek/ProtonUp-Qt"
EGIT_REPO_URI="https://github.com/DavidoTek/ProtonUp-Qt.git"
SRC_URI=""
LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="" 
DEPEND="dev-python/pyxdg
	dev-python/requests
	dev-python/vdf 
	dev-qt/qttools"
	#pyside6
RDEPEND="${DEPEND}"
BDEPEND=""

