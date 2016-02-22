#
# Makefile
# uralbash, 2016-02-22 00:58
#

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
    git pull && \
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
		--with-x \
		--with-python3-config-dir=/usr/lib/python3.5/config-3.5dm-x86_64-linux-gnu \
		--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
		--enable-gui=gtk2 --enable-cscope && \
    make -j4 && \
	mkdir -p ~/Projects/bin/vim/ && \
	make install DESTDIR=~/Projects/bin/vim/ && \
    make clean distclean


.PHONY: vim, python

# vim:ft=make
#
