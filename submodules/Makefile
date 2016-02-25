#
# Makefile
# uralbash, 2016-02-22 00:58
#

export LUA_PREFIX=/nix/store/avj9vw4p8ra5aglrb49g4jkzarscywwc-lua-5.3.0

all:
	@echo "Makefile needs your attention"

python:
	pip install -U -e python/pep8/ --user
	pip install -U -e python/flake8/ --user
	pip install -U -e python/mccabe/ --user
	pip install -U -e python/pydocstyle/ --user
	pip install -U -e python/pep8-naming/ --user

vim:
	cd vim && \
	git reset --hard && \
    git pull origin master && \
    make clean distclean && \
	./configure --with-features=huge \
		--enable-multibyte \
		--enable-rubyinterp \
		--enable-pythoninterp \
		--enable-python3interp \
		--enable-perlinterp \
		--enable-luainterp \
		--enable-gui=auto \
		--with-features=huge \
		--enable-fail-if-missing \
		--enable-largefile \
		--with-x \
		--enable-gui=auto \
		--enable-cscope \
		LDFLAGS="-Wl,-rpath,${LUA_PREFIX}/lib" && \
    make -j4 && \
	mkdir -p ~/Projects/bin/vim/ && \
	make install DESTDIR=~/Projects/bin/vim/ && \
    make clean distclean && \
	git reset --hard && \
	git clean -f

.PHONY: vim python

# vim:ft=make
#
