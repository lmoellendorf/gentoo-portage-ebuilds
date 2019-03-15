# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby24"

inherit ruby-fakegem

DESCRIPTION="Alternative stem processor for asciidoctor based on Mathematical."
HOMEPAGE="https://github.com/asciidoctor/asciidoctor-mathematical"

ruby_add_rdepend "
	dev-ruby/ruby-enum
	dev-ruby/i18n
	dev-ruby/mathematical
	"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
