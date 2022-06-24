EAPI="7"

inherit multilib autotools

KEYWORDS="amd64"
S="${WORKDIR}/csv${PV}"
DESCRIPTION="Chez Scheme is both a programming language and an implementation of that language, with supporting tools and documentation. "
HOMEPAGE="https://cisco.github.io/ChezScheme/"
LICENSE="GPL-3+"
IUSE="X ncurses threads"
RDEPEND="X? ( x11-libs/libX11 ) ncurses? ( sys-libs/ncurses )"
BDEPEND="virtual/pkgconfig sys-devel/make sys-devel/gcc"
SRC_URI="https://github.com/cisco/ChezScheme/releases/download/v${PV}/csv${PV}.tar.gz"
SLOT="0"
RESTRICT="mirror test"

src_configure(){
	myconf=""
	if use X == 1 ; then
	   myconf+=" --disable-x11 "
	fi
	if use ncurses == 1 ; then
	   myconf+=" --disable-curses "
	fi
	if use threads ; then
	   myconf+=" --threads "
	fi
	sh ./configure ${myconf} --temproot=${D}
}