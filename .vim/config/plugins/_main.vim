" {{{ NERDTree and AirLines
source ~/.vim/config/plugins/webdevicon.vim
source ~/.vim/config/plugins/airline.vim
source ~/.vim/config/plugins/nerdtree.vim
" }}}

" {{{ Autocomplete
source ~/.vim/config/plugins/youcompleteme.vim
" }}}

" {{{ IDE
source ~/.vim/config/plugins/template.vim
source ~/.vim/config/plugins/indentline.vim
source ~/.vim/config/plugins/syntastic.vim
source ~/.vim/config/plugins/quickrun.vim
source ~/.vim/config/plugins/auto-pairs.vim
" }}}

" {{{ JavaScrip & JSON & YAML
autocmd Filetype js, javascript, javascript.jsx
            \ source ~/.vim/config/plugins/javascript-libraries-syntax.vim
" }}}

" {{{ C++
let _type = ['c', 'cpp']
autocmd Filetype _type source ~/.vim/config/plugins/clang-format.vim
" }}}

" {{{ TMP
" TMP {{{ Quicktaks
" Plug 'aaronbieber/vim-quicktask' " TODO
" call Load('./plugins/quicktask.vim')
" }}}
" }}}
