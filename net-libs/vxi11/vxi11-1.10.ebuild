# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

# A short (less than 80 characters) description of the package's purpose.
DESCRIPTION="collection of source code that will allow you to talk to ethernet-
enabled instruments that use the VXI11 protocol"

# Package's homepage.
HOMEPAGE="http://optics.eee.nottingham.ac.uk/vxi11"    

# A list of source URIs for the package. 
SRC_URI="http://optics.eee.nottingham.ac.uk/vxi11/source/${PN}_${PV}.tar.gz"

# ~arch:
# package version and the ebuild are believed to work and do not have any known 
# serious bugs, but more testing is required before the package version is 
# considered suitable for arch.
# No keyword
# If a package has no keyword for a given arch, it means it is not known whether 
# the package will work, or that insufficient testing has occurred for ~arch.
# In this case: ~alpha ~hppa ~ia64 ~ppc ~ppc64
KEYWORDS="~amd64 ~x86"

# The package's SLOT. No slots are needed.
SLOT="0"

# The package's license, corresponding exactly (including case) to a file in 
# licenses/.
LICENSE="GPL-2"

# A list of all USE flags (excluding arch flags, but including USE_EXPAND flags) 
# used within the ebuild.
#IUSE=""

# A list of the package's runtime dependencies.
#RDEPEND=""

src_compile() {
	cd ${PN}_${PV}
	#econf
	emake -j1 || die
}

src_install() {
	emake DESTDIR="${D}" install || die 
	dodoc CHANGELOG README || die 
}

