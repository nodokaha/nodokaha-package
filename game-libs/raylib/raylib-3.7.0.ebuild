EAPI="7"

inherit cmake-utils

KEYWORDS="amd64"
S="${WORKDIR}/raylib-${PV}"
DESCRIPTION="A simple and easy-to-use library to enjoy videogames programming "
HOMEPAGE="https://www.raylib.com"
LICENSE="ZLIB"
BDEPEND="virtual/pkgconfig sys-devel/make"
SLOT="0/3.7"
RESTRICT=mirror
SRC_URI=https://github.com/raysan5/raylib/archive/refs/tags/${PV}.tar.gz