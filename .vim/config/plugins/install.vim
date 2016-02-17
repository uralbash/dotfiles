" {{{ Common function
let g:list_of_settings_path = []
let s:plug_dir = expand('<sfile>:p:h')
function! Load(filename)
    call add(g:list_of_settings_path, s:plug_dir.'/'.a:filename)
endfunction
" }}}

" {{{ RestructuredText & Markdown
Plug 'Rykka/riv.vim', { 'for': 'rst' }
" Plug 'Rykka/InstantRst', { 'for': 'rst' }
"
call Load('../language/sphinx.vim')
call Load('../language/markdown.vim')
" }}}

" {{{ Quicktaks
Plug 'aaronbieber/vim-quicktask' " TODO
call Load('quicktask.vim')
" }}}

" {{{ HTML & CSS
Plug 'othree/html5.vim', {'for': ['jinja', 'jinja2', 'html', 'html5', 'djangohtml']}
Plug 'hail2u/vim-css3-syntax', {'for': ['jinja', 'jinja2', 'html', 'html5', 'djangohtml', 'css']}
Plug 'ap/vim-css-color', {'for': ['jinja', 'jinja2', 'html', 'html5', 'djangohtml', 'css']}
call Load('../language/css.vim')
" }}}

" {{{ JavaScrip & JSON
Plug 'elzr/vim-json', {'for': 'json'}
" {{{ Syntax
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'mxw/vim-jsx', {'for': 'javascript'}

Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
call Load('javascript-libraries-syntax.vim')
" }}}
Plug 'marijnh/tern_for_vim', {'for': 'javascript', 'do': 'npm install'}
call Load("../language/js.vim")
" }}}

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

call Load('webdevicon.vim')
call Load('airline.vim')
call Load('nerdtree.vim')
" }}}

" {{{ Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
call Load('../language/git.vim')
" }}}

" {{{ Autocomplete
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer  --gocode-completer --system-libclang --system-boost' }
call Load("youcompleteme.vim")
" }}}

" {{{ Nix package manager
Plug 'LnL7/vim-nix'
" }}}

" {{{ Python
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'fisadev/vim-isort', { 'for': 'python', 'do': '../_scripts/isort.sh' }
Plug 'mindriot101/vim-yapf', {'for': 'python', 'do': '../_scripts/yapf.sh'}
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'python-rope/ropevim', { 'for': 'python' }
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv', {'for': 'python'}
call Load('../language/python.vim')
" {{{ Jinja2
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['jinja', 'jinja2', 'html', 'html5', 'htmldjango']}
call Load('../language/jinja.vim')
" }}}
" {{{ Mako
Plug 'sophacles/vim-bundle-mako', {'for': ['mako', 'html', 'html5']}
" Plug 'vim-scripts/mako.vim'
" }}}
" end Python }}}

" {{{ Golang
Plug 'fatih/vim-go', { 'for': 'go' }

call Load('../language/go.vim')
" }}}

" {{{ Dart
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
call Load('../language/dart.vim')
" }}}

" {{{ Nginx, Docker, Vagrant etc...
Plug 'evanmiller/nginx-vim-syntax', {'for': 'nginx'}
Plug 'ekalinin/Dockerfile.vim', {'for': 'dockerfile'}

call Load('../language/nginx.vim')
call Load("../language/docker.vim")
" }}}

" {{{ Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-endwise', {'for': 'ruby'}
call Load('../language/ruby.vim')
" }}}

" {{{ C++
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/a.vim'
call Load('clang-format.vim')
" }}}

" {{{ Vim
call Load('../language/vim.vim')
" }}}

" {{{ IDE
Plug 'aperezdc/vim-template' " :Template *.py
Plug 'Yggdroot/indentLine'  " <M-l> Display indentation lines
Plug 'tomtom/tcomment_vim'  " <M-M> Comment selected lines
Plug 'scrooloose/syntastic' " <M-e> Syntax checker
" Plug 'q0LoCo/syntastic', {'branch': 'async'}
Plug 'majutsushi/tagbar'    " <F8> TagBar
Plug 'thinca/vim-quickrun'  " <F5> Run
Plug 'vim-scripts/DeleteTrailingWhitespace' " :DeleteTrailingSpace
Plug 'vim-scripts/Auto-Pairs' " Auto-Pairs or DelimMate

call Load('template.vim')
call Load('indentline.vim')
call Load("syntastic.vim")
call Load("quickrun.vim")
call Load("auto-pairs.vim")
" }}}
