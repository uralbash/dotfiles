#
# Makefile
# uralbash, 2016-02-22 18:09
#

all: install
	git submodule add https://github.com/jszakmeister/markdown2ctags.git submodules/markdown2ctags/
	git submodule add https://github.com/jszakmeister/rst2ctags.git submodules/rst2ctags/

install:
	nix-shell -p stack --run "stack install hasktags"


# vim:ft=make
#
