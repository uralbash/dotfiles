" {{{ RestructuredText & Markdown
" Plug 'Rykka/riv.vim', { 'for': 'rst' } Not support vim 8
autocmd Filetype rst source ~/.vim/config/language/sphinx.vim
autocmd Filetype md  source ~/.vim/config/language/markdown.vim
" }}}


" {{{ HTML & CSS
autocmd Filetype html,jinja,jinja2,css,djangohtml,htmldjango,html5
            \ source ~/.vim/config/language/css.vim
" }}}


" {{{ JavaScrip & JSON & YAML
autocmd Filetype yaml
            \ source ~/.vim/config/language/yaml.vim
source ~/.vim/config/language/js.vim
" }}}

" {{{ Python
autocmd Filetype python source ~/.vim/config/language/python.vim
" Template engine
autocmd Filetype python source ~/.vim/config/language/jinja.vim
" }}}


" {{{ Golang
autocmd Filetype go call source ~/.vim/config/language/go.vim
" }}}


" {{{ Dart
autocmd Filetype dart call source ~/.vim/config/language/dart.vim
" }}}


" {{{ Nginx, Docker, Vagrant etc...
autocmd Filetype nginx call source ~/.vim/config/language/nginx.vim
autocmd Filetype dockerfile call source ~/.vim/config/language/docker.vim
" }}}


" {{{ Ruby
autocmd Filetype ruby call source ~/.vim/config/language/ruby.vim
" }}}


" {{{ Vim
autocmd Filetype vim call source ~/.vim/config/language/vim.vim
" }}}
