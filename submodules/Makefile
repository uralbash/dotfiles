#
# Makefile
# uralbash, 2016-02-22 00:58
#

# export LUA_PREFIX=/nix/store/644xj34l4qn36hy921r3lhgcar27nysz-lua-5.3.0
export LUA_PREFIX=/home/uralbash/.nix-profile

all:
	@echo "Makefile needs your attention"

python:
	pip3 install -U -e python/pep8-naming/ --user
	pip3 install -U -e python/flake8/ --user
	pip3 install -U -e python/mccabe/ --user
	pip3 install -U -e python/pydocstyle/ --user
	pip3 install -U -e python/pep8-naming/ --user

vim:
	cd vim && \
	git reset --hard && \
    git pull origin master && \
    make clean distclean && \
	./configure --with-features=huge \
		--enable-multibyte \
		--enable-rubyinterp \
		--enable-pythoninterp \
		--enable-perlinterp \
		--enable-luainterp \
		--enable-fail-if-missing \
		--enable-largefile \
		--with-x \
		--enable-gui=auto \
		--with-features=huge \
		--enable-cscope \
		LDFLAGS="-Wl,-rpath,${LUA_PREFIX}/lib" && \
    make -j5 && \
	mkdir -p ~/Projects/bin/vim/ && \
	make install DESTDIR=~/Projects/bin/vim/ && \
    make clean distclean && \
	git reset --hard && \
	git clean -f

.PHONY: vim python

# vim:ft=make
#
