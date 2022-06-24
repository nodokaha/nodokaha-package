EAPI="7"

inherit git-r3

KEYWORDS="amd64"
S="${WORKDIR}/guile-picture-language-${PV}"
DESCRIPTION="This package provides a Guile library containing simple procedures to generate primitive shapes, to manipulate them, and to compose them to build complex pictures. "
HOMEPAGE="https://elephly.net/guile-picture-language/"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile virtual/opengl dev-scheme/guile-cairo dev-scheme/guile-rsvg"
BDEPEND="virtual/pkgconfig sys-devel/make"
EGIT_REPO_URI="https://git.elephly.net/software/guile-picture-language.git"
SRC_URI=""
SLOT="0"
RESTRICT=mirror

src_configure(){
	./bootstrap.sh
	econf
}
