# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ADA_COMPAT=(gnat_2020 gnat_2021)
inherit ada multilib

DESCRIPTION="VHDL 2008/93/87 simulator"
HOMEPAGE="http://ghdl.free.fr/"
SRC_URI="https://github.com/ghdl/ghdl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="synth"

DEPEND="${ADA_DEPS}"
RDEPEND="${DEPEND}"
BDEPEND=""

REQUIRED_USE="${ADA_REQUIRED_USE}"

src_prepare() {
	default
	sed -e 's#$(prefix)/lib$#$(prefix)/'"$(get_libdir)"'#g' -i "${S}/Makefile.in" \
		|| die 'unable to fix library install path'
}

src_configure() {
	echo $EADA
	ada_export GCC GNATMAKE
	./configure --prefix="${EPREFIX}"/usr --disable-werror $(use_enable synth)
}

src_compile() {
	ada_export GCC GNATMAKE
	emake GCC="${GCC}" GNATMAKE="${GNATMAKE}"
}
