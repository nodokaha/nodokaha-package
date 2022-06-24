EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/haunt-${PV}"
DESCRIPTION="Haunt is a static site generator written in Guile Scheme.  Haunt
features a functional build system and an extensible interface for
reading articles in any format."
HOMEPAGE="https://dthompson.us/projects/haunt.html"
LICENSE="GPL-3+"
IUSE="commonmark reader"
RDEPEND="dev-scheme/guile commonmark? ( dev-scheme/guile-commonmark ) reader? ( dev-scheme/guile-reader )"
BDEPEND="virtual/pkgconfig sys-devel/make"
SRC_URI="https://files.dthompson.us/haunt/haunt-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror
