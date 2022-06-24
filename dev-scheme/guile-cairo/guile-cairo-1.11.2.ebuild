EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/guile-cairo-${PV}"
DESCRIPTION="Guile-Cairo is complete, wrapping almost all of the Cairo API."
HOMEPAGE="http://savannah.nongnu.org/projects/guile-cairo"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile virtual/opengl x11-libs/cairo"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="http://download.savannah.nongnu.org/releases/guile-cairo/guile-cairo-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror

src_configure(){
	sed -e "s/\[2.2 2.0\]/\[3.0 2.2 2.0\]/" -i configure.ac
	autoreconf -fiv
	econf
}
