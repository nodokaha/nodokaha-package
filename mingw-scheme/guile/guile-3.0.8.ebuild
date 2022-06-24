# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MAJOR="3.0"
DESCRIPTION="GNU Ubiquitous Intelligent Language for Extensions"
HOMEPAGE="https://www.gnu.org/software/guile/"
SRC_URI="mirror://gnu/guile/${P}.tar.gz"

LICENSE="LGPL-3+"
SLOT="12/3.0-1" # libguile-2.2.so.1 => 2.2-1
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos"
IUSE="debug debug-malloc +networking +nls +regex " # upstream recommended +networking +nls
REQUIRED_USE="regex" # workaround for bug 596322
#RESTRICT="strip"

RDEPEND="
	dev-libs/boehm-gc:=
	virtual/libiconv
	dev-libs/gmp:=
	dev-libs/libffi:=
	dev-libs/libunistring:0=
	sys-libs/ncurses:0=
	sys-libs/readline:0=
	virtual/libcrypt:="
DEPEND="${RDEPEND}"
BDEPEND="
	virtual/pkgconfig
	sys-devel/libtool
	sys-devel/gettext"

PATCHES=( "${FILESDIR}/${PN}-2.2.3-gentoo-sandbox.patch" )
DOCS=( GUILE-VERSION HACKING README )

src_configure() {
	# see bug #676468
	mv prebuilt/32-bit-big-endian{,.broken} || die

	econf \
		--enable-static=yes \
		--enable-shared=no \
		--disable-error-on-warning \
		--disable-rpath \
		--disable-mini-gmp \
		--disable-posix \
		--with-bdw-gc \
		--without-libgmp-prefix \
		--without-libiconv-prefix \
		--without-libintl-prefix \
		--without-libreadline-prefix \
		--without-libunistring-prefix \
		$(use_enable debug guile-debug) \
		$(use_enable debug-malloc) \
		--disable-deprecated \
		--disable-jit \
		$(use_enable networking) \
		--disable-nls \
		$(use_enable regex) \
		--without-threads CFLAGS="-pipe -DGC_NO_DLL" LDFLAGS="-lwinpthread" BDW_GC_CFLAGS="-I/usr/x86_64-w64-mingw32/usr/include" BDW_GC_LIBS="-L/usr/x86_64-w64-mingw32/usr/lib -lgc" LIBFFI_CFLAGS="-I/usr/x86_64-w64-mingw32/usr/lib/libffi/include" LIBFFI_LIBS="-L/usr/x86_64-w64-mingw32/usr/lib -lffi"
}

src_install() {
	default

	# From Novell
	# https://bugzilla.novell.com/show_bug.cgi?id=874028#c0
	dodir /usr/share/gdb/auto-load/$(get_libdir)
	mv "${ED}"/usr/$(get_libdir)/libguile-*-gdb.scm "${ED}"/usr/share/gdb/auto-load/$(get_libdir) || die

	# necessary for registering slib, see bug 206896
	keepdir /usr/share/guile/site

	find "${D}" -name '*.la' -delete || die
}
