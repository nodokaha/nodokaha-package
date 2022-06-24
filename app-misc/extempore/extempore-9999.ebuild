# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/digego/extempore"

inherit git-r3 cmake

DESCRIPTION="A programming environment for cyberphysical programming"
HOMEPAGE="https://github.com/digego/extempore"

KEYWORDS="~amd64"

LICENSE="all-rights-reserved"
SLOT="0"
IUSE="assets"

RESTRICT=network-sandbox

CMAKE_MAKEFILE_GENERATOR=emake

src_configure(){
	local mycmakeargs=( usex assets  -DASSETS=ON -DASSETS=OFF )
	cmake_src_configure
}