# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils qt4

DESCRIPTION="A simple frontend to mp3gain, vorbisgain and metaflac"
HOMEPAGE="http://www.qt-apps.org/content/show.php/QtGain?content=56842"
SRC_URI="http://qt-apps.org/CONTENT/content-files/56842-QtGain.tar.lzma"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="flac mp3 mp4 vorbis"

DEPEND="x11-libs/qt-core:4
    x11-libs/qt-gui:4"

RDEPEND="flac? ( media-libs/flac )
	mp3? ( media-sound/mp3gain )
	mp4? ( media-sound/aacgain )
	vorbis? ( media-sound/vorbisgain )
	media-sound/id3v2"

S=${WORKDIR}/QtGain

src_configure() {
	eqmake4 QtGain.pro
}

src_install() {
	dobin bin/qtgain || die
	newicon Icons/lsongs.png qtgain.png
	make_desktop_entry qtgain QtGain
}
