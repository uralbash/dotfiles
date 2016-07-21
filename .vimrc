scriptencoding utf-8

"{{{ Plugin Manager
call plug#begin('~/.vim/plugged')
    set nocompatible
    filetype off

    source ~/.vim/config/_install.vim

call plug#end()
"}}}

call Load("./settings/main.vim")
call Load("./keys/main.vim")

" {{{ Lazy loader settings
for setting_path in g:list_of_settings_path
    exec 'source '.setting_path
endfor
" }}}
