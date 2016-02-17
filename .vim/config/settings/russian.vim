" Russian keymap
function! EnRuHighlight()
    if &iminsert == 0
        execute "AirlineTheme light"
        set iminsert=1
    else
        execute "AirlineTheme lucius"
        set iminsert=0
    endif
endfunction

" Настраиваем переключение раскладок клавиатуры по <C-^>
set keymap=russian-jcukenwin

" Раскладка по умолчанию - английская
set iminsert=0

" аналогично для строки поиска и ввода команд
set imsearch=0

" {{{ Spellchecking
au BufNewFile,BufRead * call ToggleSpell(0)

function! ToggleSpell(revert)
    if &spell == a:revert
        set nospell
    else
        setlocal spell spelllang=ru_yo,en_us
        set spell
    endif
endfunction

" Spelling
" highlight clear SpellBad
" highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
" highlight clear SpellCap
" highlight SpellCap term=underline cterm=underline
" highlight clear SpellRare
" highlight SpellRare term=underline cterm=underline
" highlight clear SpellLocal
" highlight SpellLocal term=underline cterm=underline
" }}}
