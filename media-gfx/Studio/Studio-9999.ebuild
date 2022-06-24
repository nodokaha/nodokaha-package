EAPI="7"

inherit cmake-utils git-r3 

KEYWORDS="amd64"
S="${WORKDIR}/Studio-9999"
DESCRIPTION="libfive is a software library and set of tools for solid modeling, especially suited for parametric and procedural design."
HOMEPAGE="https://libfive.com"
LICENSE="GPL-2"
RDEPEND="dev-util/cmake dev-cpp/eigen media-libs/libpng dev-libs/boost dev-scheme/guile dev-lang/python dev-python/PyQt5 dev-qt/qtopengl"
BDEPEND="virtual/pkgconfig sys-devel/gcc"
EGIT_REPO_URI="http://github.com/libfive/libfive"
SRC_URI=""
SLOT="0"

src_install(){
	sed -e "s/\/lib\//\/lib64\//" -i ${WORKDIR}/Studio-9999_build/install_manifest.txt
	cmake-utils_src_install
}