# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-build

EGO_PN="${PN}"
_PV="${PV//./-}"
_P="${PN}-${_PV}"

DESCRIPTION="Discord TUI Client - Fork of Cordless"
HOMEPAGE="https://github.com/gord-project/${PN}"

if [[ "${PV}" != 9999 ]] ; then
	SRC_URI="https://github.com/gord-project/${PN}/archive/${_PV}.tar.gz -> ${_P}.tar.gz"
	S="${WORKDIR}/${_P}"
	KEYWORDS="amd64 x86 ~arm64 ~ppc64"
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/gord-project/${PN}"
fi

LICENSE="AGPL-3"
SLOT="0"

DEPEND="virtual/libc"
RDEPEND="${DEPEND}"
BDEPEND="dev-lang/go"

src_compile() {
	go build
}

src_install() {
	dobin ${PN}
}
