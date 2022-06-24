EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/guile-sdl2-${PV}"
DESCRIPTION="Guile-SDL2 provides Guile Scheme bindings for the SDL2 C shared library. The
bindings are written in pure Scheme using Guile's foreign function interface."
HOMEPAGE="https://dthompson.us/projects/guile-sdl2.html"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile media-libs/libsdl2[opengl] media-libs/sdl2-mixer media-libs/sdl2-image media-libs/sdl2-ttf"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="https://files.dthompson.us/guile-sdl2/guile-sdl2-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror
