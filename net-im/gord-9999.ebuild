# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit golang-build

EGO_PN="${PN}"
_PV="${PV//./-}"
_P="${PN}-${_PV}"

DESCRIPTION="Discord TUI Client - Fork of Cordless"
HOMEPAGE="https://github.com/gord-project/${PN}"

inherit git-r3
EGIT_REPO_URI="https://github.com/gord-project/${PN}"

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
