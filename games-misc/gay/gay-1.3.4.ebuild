# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} pypy3_11 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Colour your text / terminal to be more gay"
HOMEPAGE="
	https://pypi.org/project/gay/
	https://github.com/ms-jpq/gay
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
