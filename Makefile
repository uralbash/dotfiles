#
# Makefile
# uralbash, 2016-02-11 14:16
#

_:
	@echo "hi" > /dev/null

all: vim completion links

links:
	@./link_build.sh

vim: vim-spell

vim-spell:
	@wget -r ftp://ftp.vim.org/pub/vim/runtime/spell/ -P .vim/
	@mv .vim/ftp.vim.org/pub/vim/runtime/spell/ .vim/spell

version-managers:
	# Docker
	curl -sL https://download.getcarina.com/dvm/latest/install.sh | sh
	# Go lang
	bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
	# NodeJs
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

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
