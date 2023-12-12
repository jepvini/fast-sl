
pkgname=fast-sl
pkgver=5.05
pkgrel=4
pkgdesc='Speed up fork of sl'
arch=('x86_64')
# fork source:  https://github.com/leo1359531/fast-sl.git
url="https://github.com/leo1359531/fast-sl.git"
license=('custom')
depends=('ncurses' 'git')
source=(
)

prepare() {
    git clone https://github.com/leo1359531/fast-sl.git
	cd "fast-sl"
}

build() {
	cd "fast-sl"

	make
	gzip -9 -f sl.1
}

package() {
	cd "fast-sl"

	install -Dm 775 sl "$pkgdir/usr/bin/fast-sl"
	install -Dm 644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

