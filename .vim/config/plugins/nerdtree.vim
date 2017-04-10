" {{{ NERDTree
" let g:nerdtree_tabs_open_on_console_startup = 1
" let g:nerdtree_tabs_focus_on_files = 1
" let g:NERDTreeDirArrows=0
" let g:NERDTreeUpdateOnWrite = 0
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__']
" Автоматическое закрытие с последним окном
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Убираем в табах путь у файлу (только название файла)
set tabline=%!MyTabLine()

function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'

        " the label is made by MyTabLabel()
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} |'
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999X X'
    endif

    "echomsg 's:' . s
    return s
endfunction

function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let numtabs = tabpagenr('$')
    " account for space padding between tabs, and the "close" button
    let maxlen = ( &columns - ( numtabs * 2 ) - 4 ) / numtabs
    let tablabel = bufname(buflist[winnr - 1])
    while strlen( tablabel ) < 4
        let tablabel = tablabel . " "
    endwhile
    let tablabel = fnamemodify( tablabel, ':t' )
    let tablabel = strpart( tablabel, 0,  maxlen )
    return tablabel
endfunction
