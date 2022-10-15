# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Test ebuild file for logseq"
HOMEPAGE="https://logseq.com/"
SRC_URI="https://github.com/logseq/logseq/releases/download/${PV}/Logseq-linux-x64-${PV}.zip"
S="${WORKDIR}"

LICENSE="GNU Affero General Public License v3.0"

SLOT="0"
KEYWORDS="~amd64"

IUSE=""

#RESTRICT="strip"

RDEPEND=""

DEPEND="${RDEPEND}"

BDEPEND=""


src_unpack() {
	unpack_zip ${A}
}

src_install() {

	dodir "/opt/logseq"
	insinto "/opt/logseq"
	cd "${WORKDIR}/Logseq-linux-x64/"
	doins -r "."
	fperms +x "/opt/logseq/Logseq"
	cd "/opt/logseq"

	dosym "/opt/logseq/Logseq" "/usr/bin/Logseq"

}

