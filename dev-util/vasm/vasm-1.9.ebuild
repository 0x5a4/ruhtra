# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A portable and retargetable assembler"
HOMEPAGE="http://www.compilers.de/vasm.html"
SRC_URI="
	http://phoenix.owl.de/tags/vasm1_9.tar.gz -> vasm-1.9.tar.gz
	doc? ( http://sun.hasenbraten.de/vasm/release/vasm.pdf )
"
S="${WORKDIR}/${PN}"

LICENSE="VASM"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

VASM_TARGETS="target-6502 target-6800 target-6809 target-arm target-c16x target-jagrisc target-m68k target-pdp11 target-ppc target-qnice target-tr3200 target-vidcore target-x86 target-z80"
VASM_SYNTAX="syntax-std syntax-madmac syntax-mot syntax-oldstyle"

IUSE="${VASM_TARGETS} ${VASM_SYNTAX} -doc"
REQUIRED_USE="|| ( ${VASM_TARGETS} ) || ( ${VASM_SYNTAX} )"

src_unpack() {
	unpack ${P}.tar.gz
}

src_compile() {
	IFS=' ' read -ra VASM_TARGETS_LIST <<< $VASM_TARGETS
	IFS=' ' read -ra VASM_SYNTAX_LIST <<< $VASM_SYNTAX
	for VASM_SYNTAX in "${VASM_SYNTAX_LIST[@]}"; do
		# Check if the style needs to be included
		if use $VASM_SYNTAX; then
			SYNTAX_NAME=${VASM_SYNTAX:7}
			for VASM_TARGET in "${VASM_TARGETS_LIST[@]}"; do
				# Check if the target needs to be compiled
				if use $VASM_TARGET; then
					TARGET_NAME=${VASM_TARGET:7}
					einfo "compiling vasm for $TARGET_NAME with syntax $SYNTAX_NAME"
					emake CPU=$TARGET_NAME SYNTAX=$SYNTAX_NAME
				fi
			done
		fi
	done
}

src_install() {
	# This is not ideal
	dobin vasm*_*
	use doc && dodoc $DISTDIR/vasm.pdf
}
