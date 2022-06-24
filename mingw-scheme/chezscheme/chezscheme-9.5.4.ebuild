EAPI="5"

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
	myconf+=" --disable-curses "
	if use X == 1 ; then
	   myconf+=" --disable-x11 "
	fi
	if use threads ; then
	   myconf+=" --threads "
	fi
	env ./configure ${myconf} --temproot=${D} -m=ta6nt --toolprefix=x86_64-w64-mingw32-
}

src_compile(){
	cd ta6nt/c
	emake -f Mf-ta6nt cross=t o=o
}

src_install(){
	cd ta6nt
	dobin bin/ta6nt/petite.exe
	dobin bin/ta6nt/scheme.exe
	dobin bin/scheme
	dobin bin/petite
	dodir boot/ta6nt
	insinto boot/ta6nt
	doins boot/ta6nt/*
}
