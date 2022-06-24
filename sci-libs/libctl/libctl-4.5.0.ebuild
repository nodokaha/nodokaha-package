EAPI=7

DESCRIPTION="This is libctl, a Guile-based library for supporting flexible control files in scientific simulations."
HOMEPAGE="https://github.com/NanoComp/libctl/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
SRC_URI="https://github.com/NanoComp/libctl/releases/download/v${PV}/libctl-${PV}.tar.gz"
RESTRICT="mirror"

RDEPEND="dev-scheme/guile"

src_configure(){
	econf --enable-shared --prefix=/usr
}