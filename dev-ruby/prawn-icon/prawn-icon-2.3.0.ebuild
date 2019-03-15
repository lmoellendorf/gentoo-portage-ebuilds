# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby24"

RUBY_FAKEGEM_EXTRAINSTALL="data"
inherit ruby-fakegem

DESCRIPTION="A simple mechanism for rendering icons and icon fonts from within Prawn."
HOMEPAGE="https://github.com/jessedoyle/prawn-icon"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

