EAPI="7"

inherit git-r3

EGIT_REPO_URI="https://github.com/Hamayama/mmlproc"
SRC_URI=""
HOMEPAGE="https://github.com/Hamayama/mmlproc"
DESCRIPTION="Gauche で MML (Music Macro Language) の文字列を解釈して、  
  PCMデータに変換するためのモジュールです。  
  結果をwavファイルとして出力可能です。"
KEYWORDS="amd64"
SLOT="0"
RDEPEND="dev-scheme/gauche"
BDEPEND="virtual/pkgconfig sys-devel/make"

src_configure(){
	chmod +x configure
	econf
}