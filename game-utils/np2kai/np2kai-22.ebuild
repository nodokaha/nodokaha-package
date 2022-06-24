EAPI="7"

KEYWORDS="amd64"
S="${WORKDIR}/NP2kai-rev.${PV}"
DESCRIPTION="NP2kai is PC-9801 series emulator"
HOMEPAGE="https://github.com/AZO234/NP2kai"
LICENSE="MIT"
BDEPEND="virtual/pkgconfig sys-devel/make"
SLOT="0"
RESTRICT=mirror
SRC_URI=https://github.com/AZO234/NP2kai/archive/refs/tags/rev.${PV}.tar.gz

src_compile(){
	cd sdl2
	emake -f Makefile21.unix
}

src_install(){
	cd sdl2
	dobin np21kai
}