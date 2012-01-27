# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils git-2

DESCRIPTION="munkres algorithm for the Assignment Problem"
HOMEPAGE="http://software.clapper.org/munkres/"
SRC_URI=""

EGIT_REPO_URI="git://github.com/bmc/munkres.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

DOCS="CHANGELOG README.md"
