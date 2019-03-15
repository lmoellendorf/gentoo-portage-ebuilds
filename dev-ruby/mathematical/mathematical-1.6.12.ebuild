# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby24"

#RUBY_FAKEGEM_REQUIRE_PATHS="ext/$PN/lib/"
#RUBY_FAKEGEM_REQUIRE_PATHS+="lib/$PN"
RUBY_FAKEGEM_EXTRAINSTALL="ext"

inherit multilib ruby-fakegem

DESCRIPTION="A very fast way to turn TeX math equations into beautifully rendered SVGs"
HOMEPAGE="https://github.com/gjtorikian/mathematical"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

EXT_DIR="ext/$PN"

each_ruby_configure() {
	${RUBY} -C${EXT_DIR} extconf.rb --prefix="${D}" || die "extconf.rb failed"
}
#each_ruby_configure() {
	# configure the native libraries
	#${RUBY} -C${EXT_DIR} extconf.rb --prefix="${D}/usr" || die "configure failed"
#}


each_ruby_compile() {
	emake V=1 -C ${EXT_DIR}
	#cp ext/*$(get_libname) lib/$PN/ || die
	cp ext/$PN/lib/*$(get_libname) lib/$PN/ || die
	cp ext/$PN/lib/*$(get_libname) lib/ || die
	#cp ext/$PN/lib/liblasem.so ext/$PN/lib/ || die
	#cp -r ext ./ || die
}


each_ruby_install() {
	# install the native libraries
	emake -C ${EXT_DIR} install DESTDIR="${D}" || die "could not install native library"
	# install the gem files
	each_fakegem_install
}
