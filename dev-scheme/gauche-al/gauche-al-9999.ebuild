EAPI="7"

inherit git-r3

EGIT_REPO_URI="https://github.com/Hamayama/Gauche-al-mg"
SRC_URI=""
HOMEPAGE="https://github.com/Hamayama/Gauche-al-mg"
DESCRIPTION="Gauche-al は、Gauche から OpenAL を使用するための拡張ライブラリです。"
KEYWORDS="amd64"
SLOT="0"
RDEPEND="media-libs/freealut dev-scheme/gauche"
BDEPEND="virtual/pkgconfig sys-devel/make"

src_configure(){
	autoreconf -fiv
	econf
}