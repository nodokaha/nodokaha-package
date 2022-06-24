EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/guile-rsvg-${PV}"
DESCRIPTION="Guile-RSVG wraps the RSVG library for Guile, allowing you to render SVG images onto Cairo surfaces. "
HOMEPAGE="https://wingolog.org/projects/guile-rsvg/"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile virtual/opengl dev-scheme/guile-cairo"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="https://wingolog.org/pub/guile-rsvg/guile-rsvg-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror

src_configure(){
	sed -e "s/\[2.2 2.0 1.8\]/\[3.0 2.2 2.0 1.8\]/" -i configure.ac
	autoreconf -fiv
	econf
}
