# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/OrangeShark/guile-commonmark"

inherit git-r3

DESCRIPTION="guile-commonmark is a library for parsing CommonMark, a fully specified variant of Markdown."
HOMEPAGE="https://github.com/OrangeShark/guile-commonmark"

LICENSE="LGPL+"
SLOT="0"

KEYWORDS="amd64"

src_configure(){
	./bootstrap
	default
}