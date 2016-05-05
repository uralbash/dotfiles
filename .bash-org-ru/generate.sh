#! /usr/bin/env nix-shell
#! nix-shell -i bash -p ruby
#
# generate.sh
# Copyright (C) 2016 uralbash <root@uralbash.ru>
#
# Distributed under terms of the MIT license.
#


# bash.org.ru
ruby ~/.bash-org-ru/parser.rb \
  > ~/.bash-org-ru/bashorgru/bash-org-ru \
  && strfile ~/.bash-org-ru/bashorgru/bash-org-ru \
  ~/.bash-org-ru/bashorgru/bash-org-ru.dat  
# ipfw.ru
ruby ~/.bash-org-ru/parser-ipfw.rb \
  > ~/.bash-org-ru/ipfwru/ipfw-ru \
  && strfile ~/.bash-org-ru/ipfwru/ipfw-ru \
  ~/.bash-org-ru/ipfwru/ipfw-ru.dat  
# lorquotes.ru
ruby ~/.bash-org-ru/parser-lor.rb \
  > ~/.bash-org-ru/lorquotesru/lorquotes-ru \
  && strfile ~/.bash-org-ru/lorquotesru/lorquotes-ru \
  ~/.bash-org-ru/lorquotesru/lorquotes-ru.dat 
