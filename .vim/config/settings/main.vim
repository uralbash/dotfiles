" {{{ Main
" Disable timeout for Esc key
set ttimeout ttimeoutlen=0 notimeout timeoutlen=1000
" Autocomplete options:
" do not select the first candidate
set completeopt=menuone,longest
" set confirm " Get a dialog when :q, :w, or :wq fails
" let mapleader = "," " Map leader
" let maplocalleader = "_" " Local leader
set nocompatible
set hlsearch " Highlight search terms (very useful!)
set display+=lastline " Display lastline instead of @
set incsearch " Show search matches while typing
set lazyredraw " Don't redraw while executing macros (good performance config)
set laststatus=2 " Enable statusline
set magic " For regular expressions turn magic on
set ignorecase " Searches are Non Case-sensitive
set smartcase " Do smart case matching when searching
set showmatch " Show matching brackets when text indicator is over them
set showcmd " Show incomplete cmds down the bottom
set noshowmode " Do not show current mode down the bottom (we use vim-airline)
set title " Show title
set acd " Vim will change the current working directory whenever you open a file
set expandtab " Use space instead of tab
set autoread " Reload files changed outside automatically
set tabstop=4 " 1 tab == 4 spaces
set shiftwidth=4
set smarttab " Be smart when using tabs
set autoindent " Enable auto indent
set smartindent " Smart indent
set wrap " Enable word wrap
set backspace=indent,eol,start " backspace to everywhere
set noerrorbells visualbell t_vb= " No annoying sound on errors
set encoding=utf8 " Default encoding
set termencoding=utf-8 " Terminal encoding
set fileencodings=utf8,cp1251 " Supported file encodings
set number " Enable line numbers
set ruler " Always display cursor position
set hidden " A buffer becomes hidden when it is abandoned
set noswapfile " Disable swap files
set undofile " Persistent undo
set noautochdir " Change the current working directory whenever you open a file
set wildmenu " Turn on the Wild menu
set wildmode=longest:list,full " Wildmenu configuration
set wildignore+=*.o,*.pyc,*.jpg,*.png,*.gif,*.db,*.obj,.git " Ignore compiled files
set conceallevel=2 " Conceal level
set ttyfast " Optimize for fast terminal connections
set foldenable
" set foldmethod=indent
set foldlevel=99
setlocal colorcolumn=80
set path=.,,**
" Store swap, backup and undo files in fixed location
set dir=/var/tmp//,/tmp//,.
set backupdir=/var/tmp//,/tmp//,.
set undodir=/var/tmp//,/tmp//,.
" }}}

" {{{ Python path for neovim
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog='/usr/bin/python'
" }}}

if has("gui_running") " {{{ Theme
    syntax on           " syntax-highlighting
    set background=dark " Backgroud
    colors lucius       " Color scheme
    set guioptions=gc   " Disable all GUI elements and enable console based dialogs for simple queries
    set guifont=DroidSansMonoForPowerlinePlusNerdFileTypes:h14
else
    syntax on
    set t_Co=256
    set background=dark
    colors lucius
endif
" }}}

if has('mouse') " {{{
    set mouse=nv " Mouse support
    set mousemodel=popup
    set mousehide " Hide cursor when typing
endif
" }}}

if has('multi_byte') " {{{
    set listchars=tab:\ ,trail:·,eol:¶,extends:→,precedes:←,nbsp:×
    " Vertical split chars
    set fillchars=stl:\ ,stlnc:\ ,vert:│
    if has("linebreak")
          let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines
    endif
endif
" }}}

call Load("./settings/russian.vim")
call Load("./settings/color.vim")
