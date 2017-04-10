autocmd Filetype js, javascript, javascript.jsx 
            \ call SetJsConfig()
autocmd BufNewFile,BufRead *.js        call SetJsConfig()
autocmd BufNewFile,BufRead *.jsx       call SetJsConfig()
autocmd BufNewFile,BufRead *.js_t      call SetJsConfig()  
autocmd BufNewFile,BufRead *.qbs,*.qbp call SetJsConfig()

function! SetJsConfig()
    set foldmethod=syntax

    " Auto complete options for JavaScript
    set omnifunc=tern#Complete

    " JavaScript indentation
    set expandtab shiftwidth=2 tabstop=2

    " Allow JSX in normal JS files
    let g:jsx_ext_required = 1
endfunction
