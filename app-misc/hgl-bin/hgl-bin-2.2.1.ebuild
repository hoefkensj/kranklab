# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="HGL, a Native alternative Linux Launcher for Epic Games"
HOMEPAGE="https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher"
SRC_URI="mhttps://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/archive/refs/tags/v2.2.1.tar.gz"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~x86-64"

src_configure() {
	econf --with-posix-regex
}

src_install() {
	emake DESTDIR="${D}" install

	dodoc FAQ NEWS README
}
