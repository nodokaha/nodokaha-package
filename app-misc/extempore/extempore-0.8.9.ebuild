# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

SRC_URI="https://github.com/digego/extempore/archive/refs/tags/v${PV}.tar.gz"
inherit cmake

DESCRIPTION="A programming environment for cyberphysical programming"
HOMEPAGE="https://github.com/digego/extempore"

CMAKE_MAKEFILE_GENERATOR=emake

RESTRICT=network-sandbox

LICENSE="all-rights-reserved"
SLOT="0"

IUSE="assets audio graphics dynamic jack"

KEYWORDS="amd64"

src_configure(){
	local mycmakeargs=( usex assets -DASSETS=ON  -DASSETS=ON usex audio -DAUDIO=ON -DAUDIO=OFF usex graphics -DGRAPHICS=ON -DGRAPHICS=OFF usex dynamic -DEXT_DYLIB=ON -DEXT_DYLIB=OFF usex jack -DJACK=ON -DJACK=OFF)
	cmake_src_configure
}