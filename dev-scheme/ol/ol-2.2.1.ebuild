EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/ol-${PV}"
DESCRIPTION="Otus Lisp is a purely* functional dialect of small, embeddable and crossplatform Lisp."
HOMEPAGE="http://yuriy-chumak.github.io/ol/"
LICENSE="GPL-3+ MIT"
BDEPEND="virtual/pkgconfig sys-devel/make app-editors/vim"
SLOT="0"
RESTRICT=mirror
SRC_URI=https://github.com/yuriy-chumak/ol/archive/refs/tags/${PV}.tar.gz
