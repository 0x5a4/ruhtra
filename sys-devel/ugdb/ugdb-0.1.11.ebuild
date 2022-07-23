# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	aho-corasick-0.7.18
	ansi_term-0.12.1
	atty-0.2.14
	autocfg-1.0.1
	backtrace-0.3.63
	base64-0.8.0
	bincode-1.3.3
	bitflags-1.3.2
	byteorder-1.4.3
	cc-1.0.72
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.19
	clap-2.34.0
	crc32fast-1.3.0
	derive_more-0.14.1
	either-1.6.1
	flate2-1.0.22
	flexi_logger-0.11.5
	fnv-1.0.7
	fuchsia-cprng-0.1.1
	gimli-0.26.1
	glob-0.3.0
	heck-0.3.3
	hermit-abi-0.1.19
	itertools-0.5.10
	itoa-1.0.1
	json-0.11.15
	lazy_static-1.4.0
	libc-0.2.112
	linked-hash-map-0.5.4
	log-0.4.14
	matrixmultiply-0.1.15
	memchr-2.4.1
	miniz_oxide-0.4.4
	ndarray-0.8.4
	nix-0.17.0
	nom-2.2.1
	num-complex-0.1.43
	num-integer-0.1.44
	num-traits-0.1.43
	num-traits-0.2.14
	numtoa-0.1.0
	object-0.27.1
	onig-3.2.2
	onig_sys-68.2.1
	parse_int-0.5.0
	pkg-config-0.3.24
	plist-0.2.4
	proc-macro2-0.4.30
	proc-macro2-1.0.36
	quote-0.6.13
	quote-1.0.14
	rand-0.3.23
	rand-0.4.6
	rand_core-0.3.1
	rand_core-0.4.2
	raw_tty-0.1.0
	rawpointer-0.1.0
	rdrand-0.4.0
	redox_syscall-0.2.10
	redox_termios-0.1.2
	regex-1.5.4
	regex-syntax-0.4.2
	regex-syntax-0.6.25
	rustc-demangle-0.1.21
	rustc_version-0.2.3
	ryu-1.0.9
	safemem-0.2.0
	same-file-1.0.6
	semver-0.9.0
	semver-parser-0.7.0
	serde-1.0.133
	serde_derive-1.0.133
	serde_json-1.0.74
	smallvec-0.3.4
	strsim-0.8.0
	structopt-0.2.18
	structopt-derive-0.2.18
	syn-0.15.44
	syn-1.0.85
	syntect-2.1.0
	termion-1.5.6
	textwrap-0.11.0
	time-0.1.44
	toml-0.4.10
	unicode-segmentation-1.8.0
	unicode-width-0.1.9
	unicode-xid-0.1.0
	unicode-xid-0.2.2
	unix_socket-0.5.0
	unsegen-0.3.0
	unsegen_jsonviewer-0.3.0
	unsegen_pager-0.3.0
	unsegen_signals-0.3.0
	unsegen_terminal-0.3.1
	utf8parse-0.1.1
	vec_map-0.8.2
	void-1.0.2
	vte-0.3.3
	walkdir-2.3.2
	wasi-0.10.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	xml-rs-0.7.0
	yaml-rust-0.4.5
"

inherit cargo

DESCRIPTION="An alternative TUI for gdb"
HOMEPAGE="https://github.com/ftilde/ugdb"
SRC_URI="https://github.com/ftilde/ugdb/archive/$PV.tar.gz $(cargo_crate_uris)"
RESTRICT="mirror"

LICENSE="
	|| ( ISC Apache-2.0 MIT )
	|| ( Apache-2.0 Apache-2.0-with-LLVM-exceptions MIT )
	|| ( Apache-2.0 Boost-1.0 )
	|| ( Apache-2.0 Boost-1.0 CC0-1.0 MIT )
	|| ( Apache-2.0 MIT )
	|| ( Apache-2.0 MIT ZLIB )
	MIT
	ISC
	MPL-2.0
	Unlicense
"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-devel/gdb"
RDEPEND="${DEPEND}"
BDEPEND="virtual/rust"
