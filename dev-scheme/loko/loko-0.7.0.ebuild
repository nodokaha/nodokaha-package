EAPI="7"

KEYWORDS="amd64"
S="${WORKDIR}/loko-v${PV}"
DESCRIPTION="Optimizing Scheme compiler for Linux, NetBSD and bare hardware."
HOMEPAGE="https://scheme.fail/"
LICENSE="AGPL"
RDEPEND="dev-scheme/akku dev-scheme/chezscheme"
BDEPEND="virtual/pkgconfig"
SRC_URI="https://gitlab.com/weinholt/loko/-/archive/v${PV}/loko-v${PV}.tar.gz"
SLOT="0"
RESTRICT="mirror strip"

