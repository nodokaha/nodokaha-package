EAPI=7

DESCRIPTION="Meep is a free and open-source software package for electromagnetics simulation via the finite-difference time-domain (FDTD) method spanning a broad range of applications."
HOMEPAGE="https://meep.readthedocs.io"
SRC_URI="https://github.com/NanoComp/meep/releases/download/v${PV}/meep-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE="python scheme"
RESTRICT="mirror"

RDEPEND="
	scheme? ( dev-scheme/guile )
	python? ( dev-lang/python )
	sci-libs/hdf5
	sci-libs/libctl
	"

BDEPEND="
	virtual/fortran
	virtual/pkgconfig
	"
S="${WORKDIR}/meep-${PV}"

src_configure(){
	local myconf=(
	      $(use_with scheme scheme)
	      $(use_with python python) )
	econf "${myconf[@]}"
}