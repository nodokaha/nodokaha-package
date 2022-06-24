EAPI="7"

KEYWORDS="amd64"
S="${WORKDIR}/loko-${PV}"
DESCRIPTION="Optimizing Scheme compiler for Linux, NetBSD and bare hardware."
HOMEPAGE="https://scheme.fail/"
LICENSE="AGPL"
RDEPEND="dev-scheme/akku dev-scheme/chezscheme"
BDEPEND="virtual/pkgconfig"
SRC_URI="https://scheme.fail/releases/loko-${PV}.tar.gz"
SLOT="0"
RESTRICT="mirror strip"

src_compile(){
	make DESTDIR=${D} PREFIX="/usr"
}

src_install(){
	make install DESTDIR=${D} PREFIX="/usr"
}
