#
# Makefile
# uralbash, 2016-02-11 14:16
#

_:
	@echo "hi" > /dev/null

all: vim completion links

links:
	@./link_build.sh

python:
	cd submodules && make python

vim: vim-build vim-spell vim-submodules

vim-submodules:
	cd .vim && make

vim-build:
	nix-env -i ninja mono && \
	cd submodules && \
    make vim

vim-spell:
	@wget -r ftp://ftp.vim.org/pub/vim/runtime/spell/ -P .vim/
	@mv .vim/ftp.vim.org/pub/vim/runtime/spell/ .vim/spell

version-managers:
	# Docker
	curl -sL https://download.getcarina.com/dvm/latest/install.sh | sh
	# NodeJs
	curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	# Go lang
	curl -sL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | sh

bash-completion:
	# Vagrant
	wget https://raw.github.com/kura/vagrant-bash-completion/master/etc/bash_completion.d/vagrant -O .completion-vagrant.sh
	# Docker
	curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker > .completion-docker.sh
	# Bazaar
	curl -L http://bazaar.launchpad.net/~david-nussio/bazaar-completion/trunk/download/head:/bazaar.sh-20081127141834-oeqleqcidfhy9zz7-1/bazaar.sh > .completion-bazaar.sh
	# Git
	curl -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > .completion-git.sh
	# Subversion
	curl -L https://svn.apache.org/repos/asf/subversion/trunk/tools/client-side/bash_completion > .completion-svn.sh
	# Mercurial
	curl -L curl https://selenic.com/hg/raw-file/tip/contrib/bash_completion > .completion-hg.sh

# vim:ft=make
#
