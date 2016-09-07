" Keymaps

" {{{ swith language En-Ru
nmap <leader>w <ESC>:call EnRuHighlight()<CR>
imap <leader>w <ESC>:call EnRuHighlight()<CR>a
" }}}

" Spellchecking
map <leader>g :call ToggleSpell(1)<CR>

" Autopairs disable hotkey
let g:AutoPairsShortcutToggle = '<M-z>'

" {{{ disable F1
imap <F1> <nop>
nmap <F1> <nop>
" }}}

" {{{ Переопределение клавиш w,q,wq,qa
" http://stackoverflow.com/questions/117150/can-i-re-map-commands-in-vim
command! WQ wq
command! Wq wq
command! W w
command! Q q
command! Qa qa
" }}}

" {{{  HARD mode disable ← ↑ → ↓
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" }}}

" Open NERDTree
nnoremap <F2> :NERDTreeTabsToggle<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Ident line
map <Leader>i :IndentLinesToggle<CR>

" Golang
au FileType go nmap <Leader>s <Plug>(go-implements)

" TagBar
map <F8> :TagbarToggle<CR>

" Ident
nnoremap == =<CR><CR>

" Toggle syntastic errors list
nnoremap <silent> <leader>e :<C-u>call ToggleErrors()<CR>

" Comment
map <leader><leader> :TComment<CR>

" Run buffer by <F5>
nnoremap <F5> :QuickRun<CR>

" FormatJSON
com! FormatJSON %!python -m json.tool
