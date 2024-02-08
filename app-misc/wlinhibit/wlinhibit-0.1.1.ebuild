# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

inherit meson

DESCRIPTION="simple, stupid idle inhibitor for wayland"
HOMEPAGE="https://github.com/0x5a4/wlinhibit"
SRC_URI="https://github.com/0x5a4/wlinhibit/archive/refs/tags/v${PV}.tar.gz -> wlinhibit-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/wayland dev-libs/wayland-protocols"
RDEPEND="${DEPEND}"
BDEPEND=""
