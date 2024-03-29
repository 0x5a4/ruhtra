# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	addr2line-0.20.0
	adler-1.0.2
	aes-0.8.3
	ahash-0.7.6
	aho-corasick-1.0.2
	anstream-0.3.2
	anstyle-1.0.1
	anstyle-parse-0.2.1
	anstyle-query-1.0.0
	anstyle-wincon-1.0.1
	anyhow-1.0.72
	argon2-0.5.1
	arrayvec-0.7.4
	async-trait-0.1.71
	autocfg-1.1.0
	backtrace-0.3.68
	base32-0.4.0
	base64-0.21.2
	base64ct-1.6.0
	bitflags-1.3.2
	blake2-0.10.6
	block-0.1.6
	block-buffer-0.10.4
	block-padding-0.3.3
	bumpalo-3.13.0
	byteorder-1.4.3
	bytes-1.4.0
	cbc-0.1.2
	cc-1.0.79
	cfg-if-1.0.0
	cipher-0.4.4
	clap-4.3.15
	clap_builder-4.3.15
	clap_complete-4.3.2
	clap_derive-4.3.12
	clap_lex-0.5.0
	clipboard-win-3.1.1
	colorchoice-1.0.0
	const-oid-0.9.4
	copypasta-0.8.2
	core-foundation-0.9.3
	core-foundation-sys-0.8.4
	cpufeatures-0.2.9
	crypto-common-0.1.6
	daemonize-0.5.0
	data-encoding-2.4.0
	der-0.7.7
	digest-0.10.7
	directories-5.0.0
	dirs-sys-0.4.0
	dlib-0.5.2
	downcast-rs-1.2.0
	encoding_rs-0.8.32
	env_logger-0.10.0
	errno-0.3.1
	errno-dragonfly-0.1.2
	fastrand-1.9.0
	fnv-1.0.7
	form_urlencoded-1.2.0
	futures-0.3.28
	futures-channel-0.3.28
	futures-core-0.3.28
	futures-executor-0.3.28
	futures-io-0.3.28
	futures-macro-0.3.28
	futures-sink-0.3.28
	futures-task-0.3.28
	futures-util-0.3.28
	generic-array-0.14.7
	gethostname-0.2.3
	getrandom-0.2.10
	gimli-0.27.3
	h2-0.3.20
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.3.2
	hkdf-0.12.3
	hmac-0.12.1
	http-0.2.9
	httparse-1.8.0
	http-body-0.4.5
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.27
	hyper-rustls-0.24.1
	idna-0.4.0
	indexmap-1.9.3
	inout-0.1.3
	instant-0.1.12
	io-lifetimes-1.0.11
	ipnet-2.8.0
	is-terminal-0.4.7
	itoa-1.0.9
	js-sys-0.3.64
	lazy-bytes-cast-5.0.1
	lazy_static-1.4.0
	libc-0.2.147
	libloading-0.8.0
	libm-0.2.7
	linux-raw-sys-0.3.8
	lock_api-0.4.10
	log-0.4.19
	mach-0.3.2
	malloc_buf-0.0.6
	memchr-2.5.0
	memmap2-0.5.10
	memoffset-0.6.5
	mime-0.3.17
	minimal-lexical-0.2.1
	miniz_oxide-0.7.1
	mio-0.8.8
	nix-0.24.3
	nom-7.1.3
	num-bigint-dig-0.8.4
	num_cpus-1.16.0
	num-integer-0.1.45
	num-iter-0.1.43
	num-traits-0.2.15
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	object-0.31.1
	once_cell-1.18.0
	openssl-probe-0.1.5
	parking_lot-0.12.1
	parking_lot_core-0.9.8
	password-hash-0.5.0
	paste-1.0.14
	pbkdf2-0.12.2
	pem-rfc7468-0.7.0
	percent-encoding-2.3.0
	pin-project-lite-0.2.10
	pin-utils-0.1.0
	pkcs1-0.7.5
	pkcs8-0.10.2
	pkg-config-0.3.27
	ppv-lite86-0.2.17
	proc-macro2-1.0.66
	quote-1.0.31
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	redox_syscall-0.2.16
	redox_syscall-0.3.5
	redox_users-0.4.3
	regex-1.9.1
	regex-automata-0.3.3
	regex-syntax-0.7.4
	region-3.0.0
	reqwest-0.11.18
	ring-0.16.20
	rmp-0.8.11
	rmpv-1.0.0
	rsa-0.9.2
	rustc-demangle-0.1.23
	rustix-0.37.23
	rustls-0.21.5
	rustls-native-certs-0.6.3
	rustls-pemfile-1.0.3
	rustls-webpki-0.101.1
	ryu-1.0.15
	schannel-0.1.22
	scoped-tls-1.0.1
	scopeguard-1.2.0
	sct-0.7.0
	security-framework-2.9.1
	security-framework-sys-2.9.0
	serde-1.0.171
	serde_derive-1.0.171
	serde_json-1.0.103
	serde_path_to_error-0.1.14
	serde_repr-0.1.14
	serde_urlencoded-0.7.1
	sha-1-0.10.1
	sha1-0.10.5
	sha2-0.10.7
	signal-hook-registry-1.4.1
	signature-2.1.0
	slab-0.4.8
	smallvec-1.11.0
	smawk-0.3.1
	smithay-client-toolkit-0.16.0
	smithay-clipboard-0.6.6
	socket2-0.4.9
	spin-0.5.2
	spki-0.7.2
	strsim-0.10.0
	subtle-2.5.0
	syn-2.0.26
	tempfile-3.6.0
	termcolor-1.2.0
	terminal_size-0.2.6
	textwrap-0.16.0
	thiserror-1.0.43
	thiserror-impl-1.0.43
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.29.1
	tokio-macros-2.1.0
	tokio-rustls-0.24.1
	tokio-stream-0.1.14
	tokio-tungstenite-0.19.0
	tokio-util-0.7.8
	totp-lite-2.0.0
	tower-service-0.3.2
	tracing-0.1.37
	tracing-core-0.1.31
	try-lock-0.2.4
	tungstenite-0.19.0
	typenum-1.16.0
	unicode-bidi-0.3.13
	unicode-ident-1.0.11
	unicode-linebreak-0.1.4
	unicode-normalization-0.1.22
	unicode-width-0.1.10
	untrusted-0.7.1
	url-2.4.0
	utf-8-0.7.6
	utf8parse-0.2.1
	uuid-1.4.1
	version_check-0.9.4
	want-0.3.1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.87
	wasm-bindgen-backend-0.2.87
	wasm-bindgen-futures-0.4.37
	wasm-bindgen-macro-0.2.87
	wasm-bindgen-macro-support-0.2.87
	wasm-bindgen-shared-0.2.87
	wayland-client-0.29.5
	wayland-commons-0.29.5
	wayland-cursor-0.29.5
	wayland-protocols-0.29.5
	wayland-scanner-0.29.5
	wayland-sys-0.29.5
	webpki-0.22.0
	web-sys-0.3.64
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-wsapoll-0.1.1
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows-sys-0.45.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.1
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winreg-0.10.1
	x11-clipboard-0.7.1
	x11rb-0.10.1
	x11rb-protocol-0.10.0
	xcursor-0.3.4
	xml-rs-0.8.15
	zeroize-1.6.0
"

inherit shell-completion cargo

DESCRIPTION="Unofficial Bitwarden CLI"
HOMEPAGE="https://git.tozt.net/rbw"
SRC_URI="
	https://github.com/doy/rbw/archive/refs/tags/${PV}.tar.gz -> rbw-${PV}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 ISC MIT Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-crypt/pinentry"
RDEPEND="${DEPEND}"
BDEPEND=""

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install

	./target/release/rbw gen-completions bash > rbw.bash || die
	dobashcomp rbw.bash

	./target/release/rbw gen-completions fish > rbw.fish|| die
	dofishcomp rbw.fish

	./target/release/rbw gen-completions zsh > _rbw|| die
	dozshcomp _rbw
}
