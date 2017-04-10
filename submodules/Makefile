#
# Makefile
# uralbash, 2016-02-22 00:58
#

# export LUA_PREFIX=/nix/store/644xj34l4qn36hy921r3lhgcar27nysz-lua-5.3.0
export LUA_PREFIX=/home/uralbash/.nix-profile

all:
	@echo "Makefile needs your attention"

python:
	cd python/flake8/      && python setup.py install  --user 
	cd ../../python/mccabe/      && python setup.py install  --user 
	cd ../../python/pep8-naming/ && python setup.py install  --user 
	cd ../../python/pycodestyle/ && python setup.py install  --user 
	cd ../../python/pydocstyle/  && python setup.py install  --user
	pip install --user ipdb isort ipython

vim:
	cd vim && 						 \
	git reset --hard && 			 \
    git pull origin master && 		 \
    make clean distclean && 		 \
	./configure --with-features=huge \
		--enable-multibyte 			 \
		--enable-rubyinterp 		 \
		--enable-pythoninterp 		 \
		--enable-perlinterp 		 \
		--enable-luainterp 			 \
		--enable-fail-if-missing 	 \
		--enable-largefile 			 \
		--with-x 					 \
		--with-tlib=ncurses 		 \
		--enable-gui=auto 			 \
		--with-features=huge 		 \
		--enable-cscope 			 \
		LDFLAGS="-Wl,-rpath,${LUA_PREFIX}/lib,-L/nix/store/zjla10glbmd7ih6ir1k38br0imv282q3-ncurses-5.9/lib" && \
    make -j5 && \
	mkdir -p ~/Projects/bin/vim/ && \
	make install DESTDIR=~/Projects/bin/vim/ && \
    make clean distclean && \
	git reset --hard && \
	git clean -f

.PHONY: vim python

# vim:ft=make
#
