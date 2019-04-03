# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="A generic importer extension for the standard unix password manager pass."
HOMEPAGE="https://github.com/roddhjav/pass-import"
EGIT_REPO_URI="https://github.com/roddhjav/pass-import.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86_64"
IUSE=""

DEPEND="app-admin/pass"
RDEPEND="${DEPEND}"

src_unpack() {
	git-r3_src_unpack
}

rc_install() {
	emake DESTDIR="${D}" install

	dodoc README.md
}

