EAPI="7"

inherit git-r3

KEYWORDS="amd64"
EGIT_REPO_URI="https://github.com/hundredrabbits/Orca-c.git"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/orca"
S="${EGIT_CHECKOUT_DIR}"
DESCRIPTION="Orca is an esoteric programming language and live editor designed to quickly create procedural sequencers. Terminal ver."
HOMEPAGE="https://github.com/hundredrabbits/Orca"
LICENSE="MIT"
RDEPEND="media-libs/portmidi"
BDEPEND="virtual/pkgconfig"
SRC_URI=""
SLOT="0"
IUSE=""
SRC_URI=""

src_compile(){
	make
}

src_install(){
	mv build/orca build/Orca
	dobin build/Orca
}