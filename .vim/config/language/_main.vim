" {{{ RestructuredText & Markdown
" Plug 'Rykka/riv.vim', { 'for': 'rst' } Not support vim 8
autocmd Filetype rst call Load('./sphinx.vim')
autocmd Filetype md  call Load('./markdown.vim')
" }}}


" {{{ HTML & CSS
autocmd Filetype html,jinja,jinja2,css,djangohtml,htmldjango,html5
            \ call Load('./css.vim')
" }}}


" {{{ JavaScrip & JSON & YAML
autocmd Filetype yaml
            \ call Load("./yaml.vim")
source ~/.vim/config/language/js.vim
" }}}

" {{{ Python
autocmd Filetype python call Load('./python.vim')
" Template engine
autocmd Filetype python call Load('./jinja.vim')
" }}}


" {{{ Golang
autocmd Filetype go call Load('./go.vim')
" }}}


" {{{ Dart
autocmd Filetype dart call Load('./dart.vim')
" }}}


" {{{ Nginx, Docker, Vagrant etc...
autocmd Filetype nginx call Load('./nginx.vim')
autocmd Filetype dockerfile call Load("./docker.vim")
" }}}


" {{{ Ruby
autocmd Filetype ruby call Load('./ruby.vim')
" }}}


" {{{ Vim
autocmd Filetype vim call Load('./vim.vim')
" }}}



" {{{ TMP
" TMP {{{ Quicktaks
" Plug 'aaronbieber/vim-quicktask' " TODO
" call Load('./plugins/quicktask.vim')
" }}}
" }}}
