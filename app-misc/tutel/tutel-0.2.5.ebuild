# Copyright 2017-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

CRATES="
	anyhow-1.0.45
	atty-0.2.14
	bitflags-1.3.2
	bpaf-0.4.9
	cfg-if-1.0.0
	colored-2.0.0
	fastrand-1.8.0
	hermit-abi-0.1.19
	instant-0.1.12
	lazy_static-1.4.0
	libc-0.2.112
	redox_syscall-0.2.10
	remove_dir_all-0.5.3
	serde-1.0.130
	tempfile-3.3.0
	toml-0.5.8
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit bash-completion-r1 cargo

DESCRIPTION="a minimalistic todo app for terminal enthusiasts"
HOMEPAGE="https://www.github.com/InvalidName662/tutel"
SRC_URI="https://www.github.com/InvalidName662/tutel/archive/refs/tags/v${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
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

	einstalldocs

	newbashcomp res/tutel-completions.bash ${PN}

	insinto /usr/share/zsh/site-functions
	newins res/tutel-completions.zsh _${PN}

	insinto /usr/share/fish/vendor_completions.d
	newins res/tutel-completions.fish ${PN}.fish

}
