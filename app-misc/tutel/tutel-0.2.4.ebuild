# Copyright 2017-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	ansi_term-0.12.1
	anyhow-1.0.45
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	cfg-if-1.0.0
	clap-3.2.15
	clap_complete-3.2.3
	clap_lex-0.2.4
	fastrand-1.8.0
	hashbrown-0.12.3
	hermit-abi-0.1.19
	indexmap-1.9.1
	instant-0.1.12
	libc-0.2.112
	os_str_bytes-6.2.0
	proc-macro2-1.0.32
	quote-1.0.10
	redox_syscall-0.2.10
	remove_dir_all-0.5.3
	serde-1.0.130
	serde_derive-1.0.130
	strsim-0.10.0
	syn-1.0.81
	tempfile-3.3.0
	termcolor-1.1.3
	textwrap-0.15.0
	toml-0.5.8
	unicode-xid-0.2.2
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="a minimalist todo app for terminal enthusiasts"
HOMEPAGE="https://www.github.com/InvalidName662/tutel"
SRC_URI="https://www.github.com/InvalidName662/tutel/archive/refs/tags/v${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="
	|| ( Apache-2.0 MIT )
	|| ( MIT Unlicense )
	BSD
	MIT
"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"
