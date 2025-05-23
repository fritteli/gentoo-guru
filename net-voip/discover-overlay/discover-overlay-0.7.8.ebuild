# Copyright 2021-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 xdg

DESCRIPTION="Yet another Discord overlay for Linux written in Python using GTK3"
HOMEPAGE="https://github.com/trigg/Discover"
SRC_URI="https://github.com/trigg/Discover/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/Discover-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="wayland"

RDEPEND="
	>=dev-python/pygobject-3.22[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/python-xlib[${PYTHON_USEDEP}]
	dev-python/pulsectl-asyncio[${PYTHON_USEDEP}]
	wayland? ( gui-libs/gtk-layer-shell[introspection(+)] )
"
