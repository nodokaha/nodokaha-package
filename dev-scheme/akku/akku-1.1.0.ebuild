EAPI="7"

KEYWORDS="amd64"
S="${WORKDIR}/akku-${PV}"
DESCRIPTION="Akku.scm is a language package manager for
Scheme. It grabs hold of code and vigorously shakes it until it
behaves properly."
HOMEPAGE="https://akkuscm.org/"
LICENSE="GPL-3+"
RDEPEND="dev-scheme/guile dev-vcs/git net-misc/curl"
BDEPEND="virtual/pkgconfig"
SRC_URI="https://gitlab.com/akkuscm/akku/uploads/819fd1f988c6af5e7df0dfa70aa3d3fe/akku-${PV}.tar.gz"
SLOT="0"
RESTRICT=mirror

