# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..10} )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/eric-ide/"
SRC_URI="https://netcologne.dl.sourceforge.net/project/eric-ide/eric7/22.8.1/eric7-22.8.1.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"

#RDEPEND=""
#BDEPEND="
#	test? (
#	)
#"

distutils_enable_tests pytest
