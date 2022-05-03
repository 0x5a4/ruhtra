# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit font

DESCRIPTION="A font that mimics the on-screen display of VCRs"
HOMEPAGE="https://www.dafont.com/vcr-osd-mono.font"
SRC_URI="https://dl.dafont.com/dl/?f=vcr_osd_mono -> ${P}.zip"
S="${WORKDIR}"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

FONT_SUFFIX="ttf"

