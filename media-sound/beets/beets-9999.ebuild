# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils git-2

DESCRIPTION="music tagger and library organizer"
HOMEPAGE="http://beets.radbox.org/"
SRC_URI=""

EGIT_REPO_URI="git://github.com/sampsyo/beets.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="lastgenre"

DOCS="README.rst"

DEPEND=""
RDEPEND="${DEPEND}
	media-libs/mutagen
	dev-python/munkres
	dev-python/unidecode
	dev-python/python-musicbrainz-ngs
	lastgenre? ( dev-python/pylast
				dev-python/pyyaml )"
