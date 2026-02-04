TERMUX_PKG_HOMEPAGE=https://example.com
TERMUX_PKG_DESCRIPTION="Hello World for Termux"
TERMUX_PKG_LICENSE=MIT
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
  $CC hello.c -o hello
}

termux_step_make_install() {
  install -Dm755 hello $TERMUX_PREFIX/bin/hello
}