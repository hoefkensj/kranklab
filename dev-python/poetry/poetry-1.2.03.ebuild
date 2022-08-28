# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Poetry Python"
HOMEPAGE="https://github.com/python-poetry/poetry"
P="poetry-1.2.0b3"
PV="1.2.0b3"
SRC_URI="https://github.com/python-poetry/poetry/archive/${PV}.tar.gz -> ${P}.tar.gz"

echo $ENV > tmp.txt


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

distutils_enable_tests pytest
