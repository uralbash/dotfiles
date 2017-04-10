autocmd BufNewFile,BufRead *.go          set filetype=go
autocmd BufNewFile,BufRead *.nix         set filetype=nix
autocmd BufNewFile,BufRead *.css_t       set filetype=css
autocmd BufNewFile,BufRead .eslintrc     set filetype=json
autocmd BufNewFile,BufRead Dockerfile    set filetype=dockerfile
autocmd BufNewFile,BufRead *.jinja2      set filetype=jinja2
autocmd FileType html                    set filetype=htmldjango
autocmd FileType jinja2                  set filetype=htmldjango
autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.jinja,*.jinja2
            \ set filetype=htmldjango

" turn filetype detection off and, even if it's not strictly
" necessary, disable loading of indent scripts and filetype plugins
filetype off
filetype plugin indent off

"{{{ Plugin Manager
call plug#begin('~/.vim/plugged')
    set nocompatible
    source ~/.vim/config/_main.vim
call plug#end()
"}}}

" turn filetype detection, indent scripts and filetype plugins on
" and syntax highlighting too
filetype on
filetype plugin indent on
syntax on

source ~/.vim/config/settings/_main.vim
source ~/.vim/config/plugins/_main.vim
source ~/.vim/config/language/_main.vim
source ~/.vim/config/settings/russian.vim
source ~/.vim/config/settings/color.vim
source ~/.vim/config/keys/_main.vim
