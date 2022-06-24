EAPI="7"


KEYWORDS="amd64"
S="${WORKDIR}/bigloo-${PV}"
DESCRIPTION="Bigloo - a Practical Scheme Compiler"
HOMEPAGE="http://www-sop.inria.fr/indes/fp/Bigloo/index.html"
LICENSE="bigloo"
BDEPEND="virtual/pkgconfig sys-devel/make"
SLOT="0"
RESTRICT=mirror
SRC_URI=ftp://ftp-sop.inria.fr/indes/fp/Bigloo/bigloo-${PV}.tar.gz

src_configure(){
	./configure --prefix=/usr DESTDIR=${D}
}

