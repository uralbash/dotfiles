" {{{ RestructuredText & Markdown
" Plug 'Rykka/riv.vim', { 'for': 'rst' } Not support vim 8
autocmd Filetype rst source ~/.vim/config/language/sphinx.vim
autocmd Filetype md  source ~/.vim/config/language/markdown.vim
" }}}


" {{{ HTML & CSS
autocmd Filetype html,jinja,jinja2,css,djangohtml,htmldjango,html5
            \ source ~/.vim/config/language/css.vim
" Template engine
autocmd Filetype html,jinja,jinja2,css,djangohtml,htmldjango,html5
            \ source ~/.vim/config/language/jinja.vim
" }}}


" {{{ JavaScrip & JSON & YAML
autocmd Filetype yaml
            \ source ~/.vim/config/language/yaml.vim
source ~/.vim/config/language/js.vim
" }}}

" {{{ Python
source ~/.vim/config/language/python.vim
" }}}


" {{{ Golang
autocmd Filetype go source ~/.vim/config/language/go.vim
" }}}


" {{{ Dart
autocmd Filetype dart source ~/.vim/config/language/dart.vim
" }}}

" {{{ Haskell
source ~/.vim/config/language/haskell.vim
" }}}

" {{{ Nginx, Docker, Vagrant etc...
autocmd Filetype nginx source ~/.vim/config/language/nginx.vim
autocmd Filetype dockerfile source ~/.vim/config/language/docker.vim
" }}}


" {{{ Ruby
autocmd Filetype ruby source ~/.vim/config/language/ruby.vim
" }}}


" {{{ Vim
autocmd Filetype vim source ~/.vim/config/language/vim.vim
" }}}


" {{{ Git
autocmd Filetype gitcommit source ~/.vim/config/language/git.vim
" }}}
