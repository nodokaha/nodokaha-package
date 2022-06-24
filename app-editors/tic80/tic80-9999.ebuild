EAPI="7"

inherit cmake-utils git-r3

KEYWORDS="amd64"
S="${WORKDIR}/tic80-9999"
DESCRIPTION="TIC-80 is a FREE and OPEN SOURCE fantasy computer for making, playing and sharing tiny games."
HOMEPAGE="https://github.com/nesbox/TIC-80"
LICENSE="MIT"
RDEPEND="dev-util/cmake media-libs/libsdl2 dev-libs/libzip media-libs/libpng dev-libs/libuv net-misc/curl"
BDEPEND="virtual/pkgconfig sys-devel/gcc dev-vcs/git dev-util/cmake"
EGIT_REPO_URI="https://github.com/nesbox/TIC-80"
EGIT_SUBMODULES=('*')
SRC_URI=""
IUSE="mingw"
SLOT="0"

src_configure(){
	sed -i -e "s/SDL2-static/SDL2/" CMakeLists.txt
	if use mingw; then
		CMAKE_MAKEFILE_GENERATOR="emake"
	fi
		cmake-utils_src_configure
}

