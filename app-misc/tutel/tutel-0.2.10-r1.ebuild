# Copyright 2017-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

CRATES="
	anyhow-1.0.62
	bitflags-1.3.2
	bpaf-0.7.2
	cfg-if-1.0.0
	fastrand-1.8.0
	instant-0.1.12
	libc-0.2.132
	owo-colors-3.5.0
	redox_syscall-0.2.16
	remove_dir_all-0.5.3
	serde-1.0.144
	tempfile-3.3.0
	toml-0.5.9
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit shell-completion cargo

DESCRIPTION="a minimalistic todo app for terminal enthusiasts"
HOMEPAGE="https://www.github.com/InvalidName662/tutel"
SRC_URI="https://www.github.com/InvalidName662/tutel/archive/refs/tags/v${PV}.tar.gz -> tutel-${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="
	|| ( Apache-2.0 MIT )
	BSD
	MIT
	MPL-2.0
"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
BPEPEND="virtual/rust"

src_install() {
	cargo_src_install

	dobashcomp "$FILESDIR/tutel-completions.bash"

	dofishcomp "$FILESDIR/tutel-completions.fish"

	dozshcomp "$FILESDIR/tutel-completions.zsh"
}
