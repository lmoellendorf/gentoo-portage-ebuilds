# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23"

RUBY_FAKEGEM_EXTRADOC="docs/CeedlingPacket.md"
RUBY_FAKEGEM_EXTRAINSTALL="docs vendor plugins assets"

inherit ruby-fakegem

DESCRIPTION="Build/test system for C based on Ruby/Rake"
HOMEPAGE="https://github.com/ThrowTheSwitch/Ceedling"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

