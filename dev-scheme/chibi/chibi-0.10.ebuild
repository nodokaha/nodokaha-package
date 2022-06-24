EAPI="7"

inherit multilib-minimal

KEYWORDS="x86"
S="${WORKDIR}/chibi-scheme-${PV}"
DESCRIPTION="Minimal Scheme Implementation for use as an Extension Language"
HOMEPAGE="https://github.com/ashinn/chibi-scheme"
LICENSE="chibi"
BDEPEND="virtual/pkgconfig sys-devel/make"
SLOT="0"
RESTRICT=mirror
SRC_URI=https://github.com/ashinn/chibi-scheme/archive/refs/tags/${PV}.tar.gz

src_prepare(){
	multilib_copy_sources
	default
}

multilib_src_compile(){
	sed -e "394d" -i Makefile
	emake PREFIX=/usr DESTDIR=${D} libdir="\$(exec_prefix)/$(get_libdir)"
}

multilib_src_install(){
	emake install PREFIX=/usr DESTDIR=${D} libdir="\$(exec_prefix)/$(get_libdir)"
}
