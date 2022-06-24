EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/guile-opengl-${PV}"
DESCRIPTION="GNU Guile-OpenGL is a library providing access to the OpenGL graphics API from GNU Guile."
HOMEPAGE="https://www.gnu.org/software/guile-opengl"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile virtual/opengl"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="ftp://ftp.gnu.org/gnu/guile-opengl/guile-opengl-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror

src_configure(){
	sed -e "s/\[2.2 2.0\]/\[3.0 2.2 2.0\]/" -i configure.ac
	autoreconf -fiv
	econf
}
