EAPI="7"

SRC_URI="http://www.netlab.cs.tsukuba.ac.jp/~yokota/archive/Gauche-readline-${PV}.tar.gz"
HOMEPAGE="https://github.com/Hamayama/Gauche-al-mg"
DESCRIPTION="これは Shiro Kawai さんの作成した Scheme の実装である Gauche の GNU Readline 拡張モジュールです。"
KEYWORDS="amd64"
SLOT="0"
RDEPEND="sys-libs/readline dev-scheme/gauche"
BDEPEND="virtual/pkgconfig sys-devel/make"
S=${WORKDIR}/Gauche-readline-${PV}

src_configure(){
	econf --prefix=${D}/usr
}