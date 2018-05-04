# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils java-pkg-2

SRC_PN="yEd"
#FIXME
MY_PV="${PV}.1"
SRC_P="${SRC_PN}-${MY_PV}"
MY_PN="yed"
S="${WORKDIR}/${MY_PN}-${MY_PV}"

DESCRIPTION="Effective high-quality diagrams editor"
HOMEPAGE="http://www.yworks.com/en/products_yed_about.html"
SRC_URI="${SRC_P}.zip"
DOWNLOAD_URL="http://www.yworks.com/downloads?file=${SRC_URI}"

LICENSE="yEd-1.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=virtual/jre-1.8"

DEPEND="app-arch/unzip ${RDEPEND}"

RESTRICT="fetch"

pkg_nofetch() {
	eerror "${SRC_URI} not found!"
	echo
	elog "Please download the ${SRC_URI} from"
	elog "  ${DOWNLOAD_URL}"
	elog "and place it in ${DISTDIR}."
}

src_install() {
	local dest=/opt/${PN}

	java-pkg_jarinto ${dest}
	java-pkg_dojar ${MY_PN}.jar
	java-pkg_dojar lib/*.jar
	java-pkg_dolauncher "${PN}" --jar ${MY_PN}.jar


	dohtml license.html

	doicon icons/* || die

	make_desktop_entry "${PN}" "yEd Graph Editor" Graphics
}
