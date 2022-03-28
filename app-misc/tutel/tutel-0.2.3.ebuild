# Copyright 2017-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=8

CRATES="
	ansi_term-0.11.0
	ansi_term-0.12.1
	anyhow-1.0.45
	atty-0.2.14
	bitflags-1.3.2
	cfg-if-1.0.0
	clap-2.33.3
	directories-4.0.1
	dirs-sys-0.3.6
	getrandom-0.2.3
	hermit-abi-0.1.19
	libc-0.2.112
	proc-macro2-1.0.32
	quote-1.0.10
	redox_syscall-0.2.10
	redox_users-0.4.0
	serde-1.0.130
	serde_derive-1.0.130
	strsim-0.8.0
	syn-1.0.81
	textwrap-0.11.0
	toml-0.5.8
	unicode-width-0.1.9
	unicode-xid-0.2.2
	vec_map-0.8.2
	wasi-0.10.2+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="a minimalist todo app for terminal enthusiasts"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://www.github.com/InvalidName662/tutel"
SRC_URI="https://www.github.com/InvalidName662/tutel/archive/refs/tags/v0.2.3.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0 WITH LLVM-exception MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
