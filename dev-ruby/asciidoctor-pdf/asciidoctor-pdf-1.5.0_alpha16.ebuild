# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby24"

RUBY_FAKEGEM_VERSION="${RUBY_FAKEGEM_VERSION:-${PV/_alpha/.alpha.}}"
RUBY_FAKEGEM_EXTRAINSTALL="data"

inherit ruby-fakegem

DESCRIPTION="A native PDF converter for AsciiDoc"
HOMEPAGE="https://github.com/asciidoctor/asciidoctor-pdf"

ruby_add_rdepend "
	dev-ruby/prawn
	dev-ruby/prawn-svg
	dev-ruby/prawn-templates
	dev-ruby/css_parser
	dev-ruby/prawn-table
	dev-ruby/pdf-reader
	dev-ruby/prawn-icon
	dev-ruby/treetop
	dev-ruby/thread_safe
	dev-ruby/safe_yaml
	"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
