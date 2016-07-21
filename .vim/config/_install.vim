" {{{ Common function
let g:list_of_settings_path = []
let s:plug_dir = expand('<sfile>:p:h')
function! Load(filename)
    call add(g:list_of_settings_path, s:plug_dir.'/'.a:filename)
endfunction
" }}}

au BufNewFile,BufRead *.go set ft=go
au BufNewFile,BufRead *.nix filetype=nix
au BufNewFile,BufRead *.css_t set filetype=css
au BufNewFile,BufRead .eslintrc set ft=json
au BufNewFile,BufRead *.js_t set filetype=javascript
au BufNewFile,BufRead *.qbs,*.qbp set filetype=javascript
au BufNewFile,BufRead *.jinja2 set filetype=jinja2
au BufNewFile,BufRead Dockerfile set filetype=dockerfile

au FileType html set filetype=htmldjango
au FileType jinja2 set filetype=htmldjango
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.jinja,*.jinja2 set ft=htmldjango


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

call Load('./plugins/webdevicon.vim')
call Load('./plugins/airline.vim')
call Load('./plugins/nerdtree.vim')
" }}}


" {{{ Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
call Load('./language/git.vim')
" }}}


" {{{ Autocomplete
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe' ", { 'do': './install.py --all' }
call Load("./plugins/youcompleteme.vim")
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

call Load('./plugins/template.vim')
call Load('./plugins/indentline.vim')
call Load("./plugins/syntastic.vim")
call Load("./plugins/quickrun.vim")
call Load("./plugins/auto-pairs.vim")
" }}}





" {{{ RestructuredText & Markdown
Plug 'Rykka/riv.vim', { 'for': 'rst' }
autocmd Filetype rst call Load('./language/sphinx.vim')
autocmd Filetype md  call Load('./language/markdown.vim')
" }}}


" {{{ HTML & CSS
let _type = ['jinja', 'jinja2', 'html', 'html5', 'djangohtml']
Plug 'othree/html5.vim',        {'for': _type}
Plug 'ap/vim-css-color',        {'for': _type}
Plug 'hail2u/vim-css3-syntax',  {'for': _type}
autocmd Filetype html,jinja,css,djangohtml call Load('./language/css.vim')
" }}}


" {{{ JavaScrip & JSON & YAML
Plug 'elzr/vim-json',               {'for': 'json'}
Plug 'mxw/vim-jsx',                 {'for': 'javascript'}
Plug 'othree/yajs.vim',             {'for': 'javascript'}
Plug 'pangloss/vim-javascript',     {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim',   {'for': 'javascript'}
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'marijnh/tern_for_vim', {'for': 'javascript', 'do': 'npm install'}
autocmd Filetype yaml call Load("./language/yaml.vim")
autocmd Filetype javascript call Load("./language/js.vim")
autocmd Filetype javascript call Load('./plugins/javascript-libraries-syntax.vim')
" }}}


" {{{ Nix package manager
Plug 'LnL7/vim-nix', {'for': 'nix'}
" }}}


" {{{ Python
Plug 'fisadev/vim-isort',           {'for': 'python'}
Plug 'hdima/python-syntax',         {'for': 'python'}
Plug 'python-rope/ropevim',         {'for': 'python'}
Plug 'mindriot101/vim-yapf',        {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv',   {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv',   {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
autocmd Filetype python call Load('./language/python.vim')
" Template engine
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['html', 'htmldjango']}
Plug 'sophacles/vim-bundle-mako', {'for': ['html', 'mako']}
autocmd Filetype python call Load('./language/jinja.vim')
" }}}


" {{{ Golang
Plug 'fatih/vim-go', { 'for': 'go' }
autocmd Filetype go call Load('./language/go.vim')
" }}}


" {{{ Dart
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
autocmd Filetype dart call Load('./language/dart.vim')
" }}}


" {{{ Nginx, Docker, Vagrant etc...
Plug 'keith/tmux.vim',              {'for': 'tmux'}
Plug 'evanmiller/nginx-vim-syntax', {'for': 'nginx'}
Plug 'ekalinin/Dockerfile.vim',     {'for': 'dockerfile'}
autocmd Filetype nginx call Load('./language/nginx.vim')
autocmd Filetype dockerfile call Load("./language/docker.vim")
" }}}


" {{{ Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-endwise', {'for': 'ruby'}
autocmd Filetype ruby call Load('./language/ruby.vim')
" }}}


" {{{ C++
let _type = ['c', 'cpp']
Plug 'vim-scripts/a.vim',       {'for': _type}
Plug 'rhysd/vim-clang-format',  {'for': _type}
autocmd Filetype _type call Load('./plugins/clang-format.vim')
" }}}


" {{{ Vim
autocmd Filetype vim call Load('./language/vim.vim')
" }}}



" {{{ TMP
" TMP {{{ Quicktaks
" Plug 'aaronbieber/vim-quicktask' " TODO
" call Load('./plugins/quicktask.vim')
" }}}
" }}}
