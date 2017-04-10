" {{{ Colors
Plug 'jonathanfilip/vim-lucius'
Plug 'flazz/vim-colorschemes'
" }}}


" {{{ NERDTree and AirLines
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-webdevicons'  " Icons support for nerdtree and vim-airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}


" {{{ Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" }}}


" {{{ Autocomplete
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe' , {
            \ 'do': 'nix-shell -p python cmake --command ./install.py' }
" }}}


" {{{ IDE
Plug 'majutsushi/tagbar'        " <F8> TagBar
Plug 'thinca/vim-quickrun'      " <F5> Run
Plug 'Yggdroot/indentLine'      " <M-l> Display indentation lines
Plug 'tomtom/tcomment_vim'      " <M-M> Comment selected lines
Plug 'scrooloose/syntastic'     " <M-e> Syntax checker
Plug 'aperezdc/vim-template'    " :Template *.py
Plug 'vim-scripts/Auto-Pairs'   " Auto-Pairs or DelimMate
Plug 'vim-scripts/DeleteTrailingWhitespace' " :DeleteTrailingSpace
" }}}


" {{{ RestructuredText & Markdown
" Plug 'Rykka/riv.vim', { 'for': 'rst' } Not support vim 8
" }}}


" {{{ HTML & CSS
let _HtmlType = [
            \ 'jinja', 'jinja2', 'html',
            \ 'html5', 'djangohtml', 'htmldjango',
            \ 'htmljinja', 'htmljinja2']
Plug 'othree/html5.vim',       {'for': _HtmlType}
Plug 'ap/vim-css-color',       {'for': _HtmlType}
Plug 'hail2u/vim-css3-syntax', {'for': _HtmlType}
" }}}


" {{{ JavaScrip & JSON & YAML
let _JsType = ['js', 'javascript', 'javascript.jsx']
Plug 'elzr/vim-json',                {'for': 'json'}
Plug 'mxw/vim-jsx',                  {'for': _JsType}
Plug 'othree/yajs.vim',              {'for': _JsType}
Plug 'pangloss/vim-javascript',      {'for': _JsType}
Plug 'othree/es.next.syntax.vim',    {'for': _JsType}
Plug 'jelera/vim-javascript-syntax', {'for': _JsType}
Plug 'othree/javascript-libraries-syntax.vim', {'for': _JsType}
Plug 'marijnh/tern_for_vim', {'for': _JsType, 'do': 'npm install'}
" }}}

" au BufNewFile,BufRead,BufEnter *.js
"             \ setlocal filetype=javascript
" debug call Load('./language/js.vim')

" {{{ Nix package manager
Plug 'LnL7/vim-nix', {'for': 'nix'}
" }}}


" {{{ Python
Plug 'fisadev/vim-isort',            {'for': 'python'}
Plug 'hdima/python-syntax',          {'for': 'python'}
Plug 'python-rope/ropevim',          {'for': 'python'}
Plug 'mindriot101/vim-yapf',         {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv',    {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv',    {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
" Template engine
Plug 'Glench/Vim-Jinja2-Syntax', {'for': _HtmlType}
Plug 'sophacles/vim-bundle-mako', {'for': ['html', 'mako']}
" }}}


" {{{ Golang
Plug 'fatih/vim-go', { 'for': 'go' }
" }}}


" {{{ Dart
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
" }}}


" {{{ Nginx, Docker, Vagrant etc...
Plug 'keith/tmux.vim',              {'for': 'tmux'}
Plug 'evanmiller/nginx-vim-syntax', {'for': 'nginx'}
Plug 'ekalinin/Dockerfile.vim',     {'for': 'dockerfile'}
" }}}


" {{{ Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-endwise', {'for': 'ruby'}
" }}}


" {{{ C++
let _type = ['c', 'cpp']
Plug 'vim-scripts/a.vim',       {'for': _type}
Plug 'rhysd/vim-clang-format',  {'for': _type}
" }}}


" {{{ Vim
" }}}



" {{{ TMP
" TMP {{{ Quicktaks
" Plug 'aaronbieber/vim-quicktask' " TODO
" call Load('./plugins/quicktask.vim')
" }}}
" }}}
