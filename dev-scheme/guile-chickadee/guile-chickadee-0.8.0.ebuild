EAPI="7"

KEYWORDS="amd64"
S="${WORKDIR}/chickadee-${PV}"
DESCRIPTION="Chickadee is a game development toolkit for Guile Scheme."
HOMEPAGE="https://dthompson.us/projects/chickadee.html"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile dev-scheme/guile-opengl dev-scheme/guile-sdl2 media-libs/openal media-sound/mpg123 media-libs/freetype"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="https://files.dthompson.us/chickadee/chickadee-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror

src_compile(){
	cd chickadee
	sed -i -e "s/\/usr\/lib64\/libreadline/\/lib64\/libreadline\.so\.8/" "config.scm"
	cd ..
	default
}