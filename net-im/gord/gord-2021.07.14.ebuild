# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-build

EGO_PN="${PN}"
_PV="${PV//./-}"
_P="${PN}-${_PV}"

DESCRIPTION="Discord TUI Client - Fork of Cordless"
HOMEPAGE="https://github.com/gord-project/${PN}"

#https://github.com/gord-project/gord/archive/refs/tags/2021-07-14.tar.gz
SRC_URI="https://github.com/gord-project/${PN}/archive/refs/tags/${_PV}.tar.gz -> ${_P}.tar.gz"
S="${WORKDIR}/${_P}"
KEYWORDS="amd64"
LICENSE="BSD-3"
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
